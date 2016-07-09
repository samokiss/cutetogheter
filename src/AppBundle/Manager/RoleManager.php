<?php
/**
 * Created by PhpStorm.
 * User: Samuel
 * Date: 16-05-30
 * Time: 7:10 PM
 */

namespace AppBundle\Manager;


use Doctrine\ORM\EntityManager;
use Symfony\Component\HttpKernel\Kernel;

class RoleManager extends BaseManager
{
    public function __construct(EntityManager $em, Kernel $kernel, $className)
    {
        parent::__construct($em, $kernel, $className);
    }

}