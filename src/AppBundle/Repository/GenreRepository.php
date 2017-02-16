<?php

namespace AppBundle\Repository;

use Doctrine\ORM\EntityRepository;

class GenreRepository extends EntityRepository
{
    public function findNumberOfFilmInGenre()
    {
        return $this->getEntityManager()
            ->createQuery('SELECT g.libelle, count(f.id) as nbFilm '
                    . 'FROM AppBundle:Film f '
                    . 'JOIN f.extGenre g '
                    . 'GROUP BY g.libelle ')
            ->getResult();
    }
}