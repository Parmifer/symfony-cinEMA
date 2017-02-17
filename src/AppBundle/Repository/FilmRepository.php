<?php

namespace AppBundle\Repository;

use Doctrine\ORM\EntityRepository;

class FilmRepository extends EntityRepository
{
    public function findMostRecent($quantiteFilmAccueil)
    {   
        return $this->getEntityManager()
            ->createQuery('SELECT f FROM AppBundle:Film f ORDER BY f.dateSortie DESC')
            ->setMaxResults($quantiteFilmAccueil)
            ->getResult();
    }
    
    public function findByGenre($slug)
    {
        return $this->getEntityManager()
            ->createQuery('SELECT f '
                    . 'FROM AppBundle:Film f '
                    . 'JOIN f.extGenre g '
                    . 'WHERE g.slug = :slug '
                    . 'ORDER BY f.titre ASC')
            ->setParameter('slug', $slug)
            ->getResult();
    }
    
    public function findAll()
    {
        return $this->findBy(array(), array('titre' => 'ASC'));
    }
}