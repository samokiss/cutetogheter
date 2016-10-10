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
    private $twig;
    private $mailer;

    public function __construct(EntityManager $em, Kernel $kernel, \Twig_Environment $twig, \Swift_Mailer $mailer,$className)
    {
        parent::__construct($em, $kernel, $className);

        $this->twig = $twig;
        $this->mailer = $mailer;
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

    /**
     * @param Rsvp $rsvps
     */
    public function getTotal($rsvps)
    {
        $total = 0;
        /** @var Rsvp $rsvp */
        foreach ($rsvps as $rsvp) {
            $total += $rsvp->getGuestNumber();
        }
        
        return $total;
    }

    public function sendMail()
    {
        $message = \Swift_Message::newInstance()
            ->setSubject('Votre inscription a bien été enregistré')
            ->setFrom('samylaia@cutetogether.com')
            ->setTo('gomis.samuel@gmail.com')
            ->setBody(
                $this->twig->render(':email:rsvp.html.twig')
            );

        $this->mailer->send($message);


    }

}