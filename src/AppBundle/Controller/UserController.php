<?php

namespace AppBundle\Controller;

use AppBundle\Entity\User;
use AppBundle\Form\UserType;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\HttpFoundation\Request;

/**
 * Class UserController
 * @package AppBundle\Controller
 * @route("admin/user")
 */
class UserController extends Controller
{
    /**
     * @Route("/new", name="user_new")
     */
    public function newAction(Request $request)
    {
        $user = new User();

        $form = $this->createForm(UserType::class, $user);

        $form->handleRequest($request);
        if($form->isValid()) {

            $this->get('user.manager')->save($user);

            return $this->redirectToRoute('user_list',[
                'id' => $user->getId()
            ]);
        }

        return $this->render(':user:new.html.twig', [
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/show/{id}", name="user_show")
     *
     * @Method("GET")
     */
    public function showAction(User $user)
    {
        return $this->render(':user:show.html.twig', [
            'user' => $user
        ]);
        
    }

    /**
     * @Route("/list", name="user_list")
     */
    public function listAction()
    {
        $users = $this->getDoctrine()->getRepository('AppBundle:User')->findAll();

        return $this->render(':user:list.html.twig', [
           'users' => $users,
        ]);
    }
    
    /**
     * @Route("/edit/{id}", name="user_edit")
     */
    public function editAction(User $user, Request $request)
    {
        $form = $this->createForm(UserType::class, $user);

        $form->handleRequest($request);

        if( $form->isSubmitted() && $form->isValid()) {
            $this->get('user.manager')->save($user);

            return $this->redirectToRoute('user_show', [
               'id' => $user->getId(),
            ]);
        }

        return $this->render(':user:new.html.twig', [
            'form' => $form->createView(),
        ]);
    }
    
    /**
     * @Route("/delete/{id}", name="user_delete")
     */
    public function deleteAction(User $user)
    {
        $this->get('user.manager')->delete($user);

        return $this->redirectToRoute("user_list");
    }
        
}
