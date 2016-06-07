<?php

/**
 * Created by PhpStorm.
 * User: Samuel
 * Date: 16-05-25
 * Time: 9:20 AM
 */
namespace AppBundle\Manager;

use Doctrine\ORM\EntityManager;
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
    private $className;

    private $kernel;

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
        if( null !== $data->getImageFile()) {
            $data = $this->uploadPicture($data);
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

    public function uploadPicture($data)
    {
        // $file stores the uploaded PDF file
        $file = $data->getImageFile();

        // Generate a unique name for the file before saving it
        $fileName = md5(uniqid()).'.'.$file->getClientOriginalExtension();

        // Move the file to the directory where brochures are stored
        $picturesDir = $this->kernel->getRootDir().'/../web/uploads/pictures';
        $file->move($picturesDir, $fileName);

        // Update the 'brochure' property to store the PDF file name
        // instead of its contents
        $data->setImage($fileName);

        return $data;

    }

//    public function createForm($data, $request)
//    {
//        $form = $this->createForm(LovestoryType::class, $data);
//
//        $form->handleRequest($request);
//
//        if( $form->isValid() ) {
//            $this->get('lovestory.manager')->save($data);
//
//            $this->redirectToRoute('story_list', [
//                'id' => $data->getId(),
//            ]);
//        }
//    }
}