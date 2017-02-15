<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class MainController extends Controller
{
    /**
     * @Route("/", name="accueil")
     */
    public function indexAction()
    {
        return $this->render('index.html.twig', [
            
        ]);
    }
    
    /**
     * @Route("/a-propos", name="aPropos")
     */
    public function aProposAction()
    {             
        $createurs = [
            'Yann BUTSCHER',
            'Lucile DECROZANT-TRIQUENAUX'
        ];
        
        return $this->render('a_propos.html.twig', [
            'createurs' => $createurs
        ]);
    }

    /**
     * @Route("/mentions-legales", name="mentionsLegales")
     */
    public function mentionsLegalesAction()
    {
        return $this->render('mentions_legales.html.twig', [
            // ...
        ]);
    }
}

