<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class OtherPagesController extends Controller
{
    public function indexAction()
    {
        return $this->render('AppBundle:OtherPages:index.html.twig', [
            
        ]);
    }
    
    public function showAboutAction()
    {             
        $createurs = [
            'Yann BUTSCHER',
            'Lucile DECROZANT-TRIQUENAUX'
        ];
        
        return $this->render('AppBundle:OtherPages:about.html.twig', [
            'createurs' => $createurs
        ]);
    }

    public function showLegalMentionsAction()
    {
        return $this->render('AppBundle:OtherPages:legal_mentions.html.twig', [
            // ...
        ]);
    }
}
