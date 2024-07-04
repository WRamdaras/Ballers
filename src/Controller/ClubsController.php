<?php

namespace App\Controller;

use App\Entity\Clubs;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ClubsController extends AbstractController
{
    #[Route('/clubs', name: 'clubs')]
    public function clubs(EntityManagerInterface $em): Response
    {
        $clubs = $em->getRepository(Clubs::class)->findAll();

        return $this->render('club/clubs.html.twig', [
            'clubs' => $clubs
        ]);
    }

    #[Route('/club-details/{id}', name: 'club-details')]
    public function clubdetails(EntityManagerInterface $em, int $id): Response
    {
        $club = $em->getRepository(Clubs::class)->find($id);

        return $this->render('club/club-details.html.twig', [
            'club' => $club
        ]);
    }

    #[Route('/club-team', name: 'club-team')]
    public function clubteam(EntityManagerInterface $em): Response
    {
        $clubteam = $em->getRepository(Clubs::class)->findAll();

        return $this->render('club/club-team.html.twig', [
            'clubteam' => $clubteam
        ]);
    }

    #[Route('/national-team', name: 'national-team')]
    public function nationalteam(EntityManagerInterface $em): Response
    {
        $nationalteam = $em->getRepository(Clubs::class)->findAll();

        return $this->render('club/national-team.html.twig', [
            'nationalteam' => $nationalteam
        ]);
    }
}
