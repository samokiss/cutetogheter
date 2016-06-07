<?php
/**
 * Created by PhpStorm.
 * User: Samuel
 * Date: 16-05-25
 * Time: 6:34 PM
 */

namespace AppBundle\Manager;


use AppBundle\Entity\User;
use Doctrine\ORM\EntityManager;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\HttpKernel\Kernel;

class UserManager extends BaseManager
{
    public function __construct(EntityManager $em, Kernel $kernel, $className)
    {
        parent::__construct($em, $kernel , $className);
    }
}