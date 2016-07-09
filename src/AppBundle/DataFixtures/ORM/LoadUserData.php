<?php

/**
 * Created by PhpStorm.
 * User: Samuel
 * Date: 16-06-21
 * Time: 7:20 PM
 */
namespace AppBundle\DataFixtures\ORM;

use AppBundle\Entity\Role;
use AppBundle\Entity\Wedding;
use Doctrine\Common\DataFixtures\FixtureInterface;
use Doctrine\Common\Persistence\ObjectManager;
use AppBundle\Entity\User;

class LoadUserData implements FixtureInterface
{
    public function load(ObjectManager $manager)
    {
        $role = new Role();
        $role->setRole('groom');

        $wedding = new Wedding();
        $wedding->setAddress();
        $wedding->setImage();
        $wedding->setCity();
        $wedding->setCountry();
        $wedding->setImage();

        $userAdmin = new User();
        $userAdmin->setBirthdate('1988-02-23');
        $userAdmin->setFacebook('https://www.facebook.com/samuel.gomis');
        $userAdmin->setFirstname('Samuel');
        $userAdmin->setImage('f0eec19325e7f536ff97c59a1e456163.png');
        $userAdmin->setLastname('Gomis');
        $userAdmin->setMail('gomis.samuel@gmail.com');
        $userAdmin->setPhone('0631093136');
        $userAdmin->setLongDescription('le futur marié');
        $userAdmin->setShortDescription('le marié');
        $userAdmin->setRole('1');

        $manager->persist($userAdmin);
        $manager->flush();
    }
}