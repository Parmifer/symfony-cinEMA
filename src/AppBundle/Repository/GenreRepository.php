<?php

namespace AppBundle\Repository;

use Doctrine\ORM\EntityRepository;

class GenreRepository extends EntityRepository
{
    public function findNumberOfFilmInGenre()
    {
        return $this->getEntityManager()
            ->createQuery('SELECT g.libelle, count(f) as nbFilm'
                    . 'FROM AppBundle:Genre g, AppBundle:Film f'
                    . 'WHERE g.id = f.ext_genre_id')
            ->getResult();
    }
}