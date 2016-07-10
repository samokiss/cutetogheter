<?php

namespace AppBundle\Repository;

/**
 * EventRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
Abstract class BaseRepository extends \Doctrine\ORM\EntityRepository
{
    public function findAllBydate()
    {
        $query = $this->createQueryBuilder('u')
            ->orderBy('u.date', 'DESC');

        return $query->getQuery()->getResult();
    }

}