<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class OtherPagesController extends Controller
{
    public function showAboutAction()
    {
        $createurs = array();
        
        return $this->render('AppBundle:OtherPages:about.html.twig', array(
            $createurs
        ));
    }

    public function showLegalMentionsAction()
    {
        return $this->render('AppBundle:OtherPages:legal_mentions.html.twig', array(
            // ...
        ));
    }

}
