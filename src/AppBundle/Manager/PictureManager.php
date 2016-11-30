<?php
/**
 * Created by PhpStorm.
 * User: Samuel
 * Date: 16-05-30
 * Time: 7:10 PM
 */

namespace AppBundle\Manager;


use AppBundle\Entity\WeddingGallery;
use Doctrine\ORM\EntityManager;
use Symfony\Component\Finder\Finder;
use Symfony\Component\HttpKernel\Kernel;

class PictureManager extends BaseManager
{
    public function __construct(EntityManager $em, Kernel $kernel, $className)
    {
        parent::__construct($em, $kernel, $className);
    }

    /**
     *
     */
    public function loadPictures()
    {
        $finder = new Finder();
        $picturesDir = $this->kernel->getRootDir() . '/../web/uploads/wedding';
        $finder->files()->in($picturesDir);
        foreach ($finder as $file) {
            $weddingPic = new WeddingGallery();
            $weddingPic->setImage($file->getFilename());
            $weddingPic->setTitle('Photo du mariage');
            $weddingPic->setDescription('22 octobre 2016');
            $this->save($weddingPic);
        }
    }

}