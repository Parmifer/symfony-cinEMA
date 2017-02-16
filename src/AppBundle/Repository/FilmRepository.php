<?php

namespace AppBundle\Repository;

use Doctrine\ORM\EntityRepository;

class FilmRepository extends EntityRepository
{
    public function findMostRecent()
    {
        return $this->getEntityManager()
            ->createQuery('SELECT f FROM AppBundle:Film f ORDER BY f.dateSortie DESC')
            ->setMaxResults(3)
            ->getResult();
    }
    
    public function findAll()
    {
        return $this->findBy(array(), array('titre' => 'ASC'));
    }
}