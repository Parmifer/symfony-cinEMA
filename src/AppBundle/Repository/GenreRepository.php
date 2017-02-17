<?php

namespace AppBundle\Repository;

use Doctrine\ORM\EntityRepository;

class GenreRepository extends EntityRepository
{
    public function findNumberOfFilmInGenre()
    {
        $em =  $this->getEntityManager();
        $query = $em->createQuery(
                'SELECT g.slug, g.libelle, count(f.id) as nbFilm '
                . 'FROM AppBundle:Film f '
                . 'JOIN f.extGenre g '
                . 'GROUP BY g.libelle '
                . 'ORDER BY nbFilm DESC')
                ->setMaxResults(3);
        
        return $query->getResult();
    }
}