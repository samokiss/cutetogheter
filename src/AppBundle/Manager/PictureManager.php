<?php
/**
 * Created by PhpStorm.
 * User: Samuel
 * Date: 16-05-30
 * Time: 7:10 PM
 */

namespace AppBundle\Manager;


use AppBundle\Entity\WeddingGallery;
use AppBundle\Enum\DataEnum;
use Doctrine\ORM\EntityManager;
use Symfony\Component\Filesystem\Filesystem;
use Symfony\Component\Finder\Finder;
use Symfony\Component\HttpKernel\Kernel;

class PictureManager extends BaseManager
{
    public function __construct(EntityManager $em, Kernel $kernel, $className)
    {
        parent::__construct($em, $kernel, $className);
    }

    /**
     * load pictures on wedding folders
     */
    public function loadPictures()
    {
        $finder = new Finder();
        $picturesDir = $this->kernel->getRootDir() . '/../web/uploads/wedding';
        $finder->files()->in($picturesDir);
        $fs = new Filesystem();
        foreach ($finder as $file) {
            $weddingPic = new WeddingGallery();
            $weddingPic->setImage($file->getFilename());
            $weddingPic->setTitle($file->getRelativePath());
            if ($file->getRelativePath() == DataEnum::$data[DataEnum::ESPAGNE] || $file->getRelativePath() == DataEnum::$data[DataEnum::JP]) {
                $weddingPic->setDescription('22 octobre 2016');
            } else {
                $weddingPic->setDescription('15 octobre 2016');
            }
            $exist = $this->em->getRepository('AppBundle:WeddingGallery')->findOneBy([
                'image' => $weddingPic->getImage(),
                'title' => $weddingPic->getDescription(),
            ]);
            if(null != $exist) {
                $this->save($weddingPic);
            }
        }
    }

}