<?php

namespace App\Controller;

use App\Entity\Leagues;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class LeaguesController extends AbstractController
{
    #[Route('/leagues', name: 'leagues')]
    public function leagues(EntityManagerInterface $em): Response
    {
        $leagues = $em->getRepository(Leagues::class)->findAll();

        return $this->render('league/leagues.html.twig', [
            'leagues' => $leagues
        ]);
    }

    #[Route('/league-details/{id}', name: 'league-details')]
    public function league(EntityManagerInterface $em, int $id): Response
    {
        $league = $em->getRepository(Leagues::class)->find($id);

        return $this->render('league/league-details.html.twig', [
            'league' => $league
        ]);
    }
}
