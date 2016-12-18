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
                'description' => $weddingPic->getDescription(),
            ]);
            if(null == $exist) {
                $this->save($weddingPic);
            }
        }
    }

    /**
     * to count picture in folder wedding
     */
    public function countPicture()
    {
        $finder = new Finder();
        $picturesDir = $this->kernel->getRootDir() . '/../web/uploads/wedding';
        $finder->files()->in($picturesDir);
        $countPicByFolder = array();
        $i = $j = $k = $l =  1;
        foreach ($finder as $file) {
            if ($file->getRelativePath() == DataEnum::$data[DataEnum::ESPAGNE]){
                $countPicByFolder[DataEnum::$data[DataEnum::ESPAGNE]] = $i++;
            }
            if ($file->getRelativePath() == DataEnum::$data[DataEnum::JP]){
                $countPicByFolder[DataEnum::$data[DataEnum::JP]] = $j++;
            }
            if ($file->getRelativePath() == DataEnum::$data[DataEnum::MAIRIE]){
                $countPicByFolder[DataEnum::$data[DataEnum::MAIRIE]] = $k++;
            }
            if ($file->getRelativePath() == DataEnum::$data[DataEnum::GALA]){
                $countPicByFolder[DataEnum::$data[DataEnum::GALA]] = $l++;
            }
        }
        return $countPicByFolder;
    }

}