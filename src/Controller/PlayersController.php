<?php

namespace App\Controller;

use App\Entity\Players;
use App\Entity\Trophy;
use App\Form\PlayerType;
use Doctrine\ORM\EntityManagerInterface;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\File\Exception\FileException;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\String\Slugger\SluggerInterface;

class PlayersController extends AbstractController
{
    #[Route('/players', name: 'players')]
    public function players(EntityManagerInterface $em): Response
    {
        $players = $em->getRepository(Players::class)->findAll();

        return $this->render('player/players.html.twig', [
            'players' => $players
        ]);
    }

    #[Route('/player-details/{id}', name: 'player-details')]
    public function playerdetails(EntityManagerInterface $em, int $id): Response
    {
        $player = $em->getRepository(Players::class)->find($id);
        $trophy = $em->getRepository(Trophy::class)->findAll();
        $playertrophies = $player->getPlayerTrophies();
        $trophyyear = [];
        foreach ($playertrophies as $playertrophy) {
            $trophyyear[$playertrophy->getTrophy()->getName()][] = $playertrophy;
        }

        return $this->render('player/player-details.html.twig', [
            'player' => $player,
            'trophy' => $trophy,
            'trophyyear' => $trophyyear
        ]);
    }

    #[Route('player-add', name: 'player-add')]
    public function add(Request $request, EntityManagerInterface $em, SluggerInterface $slugger, string $playerAddDirectory): Response
    {
        $form = $this->createForm(PlayerType::class);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
//            dd("test");
            $playerAddFile = $form->get('imgFile')->getData();
            $playerAdd = $form->getData();
           

            if ($playerAddFile) {
                $originalFilename = pathinfo($playerAddFile->getClientOriginalName(), PATHINFO_FILENAME);
                $safeFilename = $slugger->slug($originalFilename);
                $newFilename = $safeFilename.'-'.uniqid().'.'.$playerAddFile->guessExtension();

                try {
                    $playerAddFile->move($playerAddDirectory, $newFilename);
                } catch (FileException $e) {
                }

                $playerAdd->setImg($newFilename);
            }
            $em->persist($playerAdd);
            $em->flush();
            $this->addFlash('success', 'The player is added');

            return $this->redirectToRoute('players');
        }

        return $this->render('player/add-player.html.twig', [
            'form' => $form->createView()
        ]);
    }

    #[Route('/player/{id}/edit', name: 'player-edit')]
    public function edit(EntityManagerInterface $em, Request $request, Players $player): Response
    {
        $playerForm = $this->createForm(PlayerType::class, $player);

        $playerForm->handleRequest($request);
        if ($playerForm->isSubmitted() && $playerForm->isValid()) {
            $em->persist($player);

            $em->flush();

            $this->addFlash('success', 'Player is edited');

            return $this->redirectToRoute('player-details', ['id' => $player->getId()]);
        }

        return $this->render('player/update.html.twig', compact('player', 'playerForm'));
    }

    #IsGranted[("ROLE_ADMIN")]
    #[Route('/player/{id}/delete', name: 'player-delete')]
    public function delete(EntityManagerInterface $em, Players $player): Response
    {
        $em->remove($player);
        $em->flush();

        $this->addFlash('success', 'Player has been deleted');

        return $this->redirectToRoute('players');
    }
}


