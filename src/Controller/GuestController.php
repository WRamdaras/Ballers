<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class GuestController extends AbstractController
{
    #[Route('/', name: 'index')]
    public function base(): Response
    {
        return $this->render('guest/index.html.twig', [
            'controller_name' => 'GuestController',
        ]);
    }

    #[Route('/home', name: 'home')]
    public function home(): Response
    {
        return $this->render('guest/home.html.twig', [
            'controller_name' => 'GuestController',
        ]);
    }

    #[Route('/contact', name: 'contact')]
    public function contact(): Response
    {
        return $this->render('guest/contact.html.twig', [
            'controller_name' => 'GuestController',
        ]);
    }

}
