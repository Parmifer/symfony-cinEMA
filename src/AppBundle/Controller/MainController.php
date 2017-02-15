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
        
        
        $createurs = [
            [
                'nom'           => 'Yann BUTSCHER',
                'image'         => 'http://s3-us-west-1.amazonaws.com/cce-prod-storage.cloud.caltech.edu/styles/grid_7/s3/people_personal_assets/rhg/Grubbs_Paz.JPG',
                'description'   => 'D\'un naturel calme et amical, le Yann sauvage ne rage que quand il code. Mais malheureusement pour ce TP, il faut coder.',
            ],
            [
                'nom'           => 'Lucile DECROZANT-TRIQUENAUX',
                'image'         => 'http://www.ucalgary.ca/news/files/news/images/Claudette-Cloutier-350.jpg',
                'description'   => 'La Lucile sauvage se repère facilement à sa magnifique crinière bleue fluo. On peut également la pister grâce à ses cris de rage lorsqu\'elle travaille avec un Yann sauvage. Et malheureusement, pour ce TP, il faut travailler avec le Yann sauvage.',
            ],
            [
                'nom'           => 'Doliprane',
                'image'         => 'http://forterustreatment.com/wp-content/uploads/2016/03/350x300xPills-69723832.jpg.pagespeed.ic.r8nofHypR1.jpg',
                'description'   => 'Il en faudra pour survivre.',
            ]
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

