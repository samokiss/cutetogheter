<?php

/**
 * Created by PhpStorm.
 * User: Samuel
 * Date: 16-05-25
 * Time: 9:20 AM
 */
namespace AppBundle\Manager;

use AppBundle\Entity\Blog;
use AppBundle\Entity\Wedding;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\PersistentCollection;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\HttpKernel\Kernel;


abstract class BaseManager
{
    /**
     * @var EntityManager
     */
    protected $em;

    /**
     * @var string
     */
    protected $className;

    protected $kernel;

    /**
     * BaseManager constructor.
     * @param EntityManager $em
     */
    public function __construct(EntityManager $em, Kernel $kernel, $className)
    {
        $this->em = $em;
        $this->kernel = $kernel;
        $this->className = $className;
    }

    /**
     * @param $data
     */
    public function save($data)
    {
        if (method_exists($data, 'getPictures')) {
            $data = $this->uploadPictures($data);
        }

        if (method_exists($data, 'getImageFile')) {
            if ($data->getImageFile()) {
                $data = $this->uploadPicture($data);
            }
        }
        $this->em->getRepository($this->className);
        $this->em->persist($data);
        $this->em->flush();
    }

    /**
     * @param $data
     */
    public function delete($data)
    {
        $this->em->getRepository($this->className);
        $this->em->remove($data);
        $this->em->flush();
    }

    /**
     * @param UploadedFile $file
     * @return mixed
     */
    public function uploadPicture($data)
    {
        // $file stores the uploaded PDF file
        $file = $data->getImageFile();

        // Generate a unique name for the file before saving it
        $fileName = md5(uniqid()) . '.' . $file->getClientOriginalExtension();

        // Move the file to the directory where brochures are stored
        $picturesDir = $this->kernel->getRootDir() . '/../web/uploads/pictures';
        $file->move($picturesDir, $fileName);

        // Update the 'brochure' property to store the PDF file name
        // instead of its contents
        $data->setImage($fileName);

        return $data;

    }

    public function uploadPictures($data)
    {
        if ($data->getPictures() instanceof PersistentCollection
            && !$data instanceof Wedding
            && !$data instanceof Blog
        ) {
            foreach ($data->getPictures() as $picture) {
                if ($picture->getId() == null) {
                    $data->addPicture($picture);
                } else {
                    $data->addPicture($picture);
                }
            }
        }

        foreach ($data->getPictures() as $picture) {
            if ($picture->getImageFile() != null) {
                $this->uploadPicture($picture);
            }
        }
        return $data;

    }

    /**
     * Get random article
     */
    public function getRandomResult($number = null)
    {
        $results = array();
        $values = $this->em->getRepository($this->className)->findAll();
        if ($number == null) {
            $number = count($values);
        }
        shuffle($values);
        for ($i = 0; $i < $number; $i++) {
            $results[] = $values[$i];
        }
        return $results;
    }

}