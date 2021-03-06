<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Film;
use AppBundle\Form\FilterData;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use AppBundle\Form\FilmType;
use AppBundle\Form\FiltreGenreType;

/**
 * Film controller.
 *
 * @Route("film")
 */
class FilmController extends Controller
{
    /**
     * Lists all film entities.
     *
     * @Route("/", name="film_index")
     * @Method({"GET", "POST"})
     */
    public function indexAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();
        
        $filterData = new FilterData();
        $form = $this->createForm(FiltreGenreType::Class, $filterData);
        $form->handleRequest($request);

        // Est-ce que mon form a été soumis et est-ce qu'il est valide ?
        if ($form->isSubmitted() && $form->isValid())
        {
            $genre = $filterData->getGenre();
            $films = $em->getRepository('AppBundle:Film')->findByGenre($genre->getSlug());
            
            return $this->render('film/index.html.twig', array(
                'films' => $films,
                'genre' => $genre,
                'form' => $form->createView()
            ));
        }
        
        $films = $em->getRepository('AppBundle:Film')->findAll();
        return $this->render('film/index.html.twig', array(
            'films' => $films,
            'form' => $form->createView()
        ));
    }
    
    /**
     * Lists all film entities with the given genre.
     *
     * @Route("/par-genre/{slug}", name="film_genre")
     * @Method("GET")
     */
    public function showByGenreAction($slug, Request $request)
    {
        $em = $this->getDoctrine()->getManager();
        $films = $em->getRepository('AppBundle:Film')->findByGenre($slug);
        $genre = $em->getRepository('AppBundle:Genre')->findOneBySlug($slug);

        return $this->render('film/par_genre.html.twig', array(
            'films' => $films,
            'genre' => $genre
        ));
    }
    

    /**
     * Creates a new film entity.
     *
     * @Route("/nouveau", name="film_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $film = new Film();
        $form = $this->createForm(FilmType::class, $film);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($film);
            $em->flush($film);

            return $this->redirectToRoute('film_show', array('slug' => $film->getSlug()));
        }

        return $this->render('film/new.html.twig', array(
            //'film' => $film,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a film entity.
     *
     * @Route("/{slug}", name="film_show")
     * @Method("GET")
     */
    public function showAction(Film $film)
    {
        $deleteForm = $this->createDeleteForm($film);

        return $this->render('film/show.html.twig', array(
            'film' => $film,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing film entity.
     *
     * @Route("/{slug}/edition", name="film_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Film $film)
    {
        $deleteForm = $this->createDeleteForm($film);
        $editForm = $this->createForm('AppBundle\Form\FilmType', $film);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('film_show', array('slug' => $film->getSlug()));
        }

        return $this->render('film/edit.html.twig', array(
            'film' => $film,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a film entity.
     *
     * @Route("/{slug}", name="film_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Film $film)
    {
        $form = $this->createDeleteForm($film);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($film);
            $em->flush($film);
        }

        return $this->redirectToRoute('film_index');
    }

    /**
     * Creates a form to delete a film entity.
     *
     * @param Film $film The film entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Film $film)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('film_delete', array('slug' => $film->getSlug())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
