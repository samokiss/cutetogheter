<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Blog;
use AppBundle\Entity\Comment;
use AppBundle\Entity\Picture;
use AppBundle\Form\BlogType;
use AppBundle\Form\CommentType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

/**
 * Class BlogController
 * @package AppBundle\Controller
 * @route("/blog")
 */
class BlogController extends Controller
{
    /**
     * @route("/{id}", name="blog_index", defaults={"id":1}, requirements={
     *     "id": "\d+"
     * })
     */
    public function indexAction(Blog $blog, Request $request)
    {
//        return \Doctrine\Common\Util\Debug::dump($blog->getPictures());
//        foreach ($blog->getPictures() as $pic){
//            dump($pic);
//        }
        $comment = new Comment();
        $form = $this->createForm(CommentType::class, $comment);

        $form->handleRequest($request);

        if($form->isValid()) {
            $comment->setBlog($blog);
            $this->get('blog.manager')->save($comment);

            $this->redirectToRoute('blog_index',[
                'id' => $blog->getId(),
            ]);
        }

        $articles = $this->get('blog.manager')->getRandomResult(3);

        return $this->render(':blog:index.html.twig',[
            'article' => $blog,
            'articles' => $articles,
            'form' => $form->createView(),
        ]);
    }
    
    /**
     * @Route("/new", name="blog_new")
     */
    public function newAction(Request $request)
    {
        $blog = new Blog();
        $form = $this->createForm(BlogType::class, $blog);

        $form->handleRequest($request);


        if($form->isValid()) {
            $this->get('blog.manager')->save($blog);

            $this->redirectToRoute('blog_index',[
                'id' => $blog->getId(),
            ]);
        }
        
        return $this->render(':blog:new.html.twig', [
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/edit/{id}", name="blog_edit")
     */
    public function editAction(Blog $blog, Request $request)
    {
        $form = $this->createForm(BlogType::class, $blog);

        $form->handleRequest($request);


        if($form->isValid()) {
            $this->get('blog.manager')->save($blog);

            $this->redirectToRoute('blog_index',[
                'id' => $blog->getId(),
            ]);
        }

        return $this->render(':blog:new.html.twig', [
            'form' => $form->createView(),
        ]);
    }
    
    /**
     * @Route("/list", name="blog_list")
     */
    public function listAction()
    {
        $articles = $this->getDoctrine()->getRepository('AppBundle:Blog')->findAll();
        
        return $this->render(':blog:list.html.twig', [
            'articles' => $articles,
        ]);
    }

    /**
     * @Route("/delete/{id}", name="blog_delete")
     */
    public function deleteAction(Blog $blog)
    {
        $this->get('blog.manager')->delete($blog);

        return $this->redirectToRoute("blog_list");
    }

    /**
     * render controller for header admin
     */
    public function headerAction()
    {
        $wedding = $this->getDoctrine()->getRepository('AppBundle:Wedding')->find(1);

        return $this->render('::header.html.twig', [
            'wedding' => $wedding,
        ]);
    }

    /**
     * @Route("/deletepicture/{id}", name="picture_delete")
     */
    public function deletePictureAction(Picture $picture)
    {
        $this->get('picture.manager')->delete($picture);

        return $this->redirectToRoute("picture_edit");
    }
}
