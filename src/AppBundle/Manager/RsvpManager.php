<?php
/**
 * Created by PhpStorm.
 * User: Samuel
 * Date: 16-05-30
 * Time: 7:10 PM
 */

namespace AppBundle\Manager;


use AppBundle\Entity\Rsvp;
use Doctrine\ORM\EntityManager;
use Symfony\Component\HttpKernel\Kernel;

class RsvpManager extends BaseManager
{
    public function __construct(EntityManager $em, Kernel $kernel, $className)
    {
        parent::__construct($em, $kernel, $className);
    }

    public function save($data)
    {
        if (is_array($data)) {
            $rsvp = new Rsvp();
            $user = $this->em->getRepository('AppBundle:User')->find($data['user']);

            $rsvp->setGuestNumber($data['guestNumber']);
            $rsvp->setMessage($data['message']);
            $rsvp->setName($data['name']);
            $rsvp->setEmail($data['email']);
            $rsvp->setUser($user);
            parent::save($rsvp);
        } else {
            parent::save($data);
        }
    }

    public function sendMail()
    {

    }

}