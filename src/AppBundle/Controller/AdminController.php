<?php
/**
 * Created by PhpStorm.
 * User: Samuel
 * Date: 16-05-30
 * Time: 7:03 PM
 */

namespace AppBundle\Controller;


use AppBundle\Entity\Lovestory;
use AppBundle\Entity\Role;
use AppBundle\Entity\Wedding;
use AppBundle\Form\LovestoryType;
use AppBundle\Form\RoleType;
use AppBundle\Form\WeddingType;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

/**
 * Class WeddingController
 * @package AppBundle\Controller
 * @Route("admin")
 */
class AdminController extends Controller
{
    /**
     * @Route("/wedding/new", name="wedding_new")
     */
    public function weddingNewAction(Request $request)
    {
        $wedding = new Wedding();
        $form = $this->createForm(WeddingType::class, $wedding);

        $form->handleRequest($request);

        if( $form->isValid() ) {
            $this->get('wedding.manager')->save($wedding);

            $this->redirectToRoute('wedding_edit', [
                'id' => $wedding->getId(),
            ]);
        }

        return $this->render(':wedding:new.html.twig', [
           'form' => $form->createView(),
        ]);
    }

    /**
     * @param Request $request
     * @Route("/wedding/edit/{id}", name="wedding_edit", defaults={"id":1})
     *
     */
    public function weddingEditAction(Wedding $wedding, Request $request)
    {

        $form = $this->createForm(WeddingType::class,$wedding);

        $form->handleRequest($request);

        if( $form->isValid() ) {
            $this->get('wedding.manager')->save($wedding);

            $this->redirectToRoute('wedding_edit', [
               'id' => $wedding->getId(),
            ]);
        }

        return $this->render(':wedding:new.html.twig', [
            'form' => $form->createView(),
        ]);
    }

    /**
     * @param Request $request
     * @return \Symfony\Component\HttpFoundation\Response
     *
     * @Route("/story/new", name="story_new")
     */
    public function storyNewAction(Request $request)
    {
        $story = new Lovestory();

        $form = $this->createForm(LovestoryType::class, $story);
        
        $form->handleRequest($request);
        
        if( $form->isValid() ) {
            $this->get('lovestory.manager')->save($story);

            $this->redirectToRoute('story_list', [
                'id' => $story->getId(),
            ]);
        }

        return $this->render(':Lovestory:new.html.twig', [
            'form' => $form->createView(),
        ]);
    }

    /**
     * @param Request $request
     * @return \Symfony\Component\HttpFoundation\Response
     *
     * @Route("/story/edit/{id}", name="story_edit")
     */
    public function storyEditAction(Lovestory $story, Request $request)
    {
        $form = $this->createForm(LovestoryType::class, $story);

        $form->handleRequest($request);

        if( $form->isValid() ) {
            $this->get('lovestory.manager')->save($story);

            $this->redirectToRoute('story_list', [
                'id' => $story->getId(),
            ]);
        }

        return $this->render(':Lovestory:new.html.twig', [
            'form' => $form->createView(),
            'entity' => get_class($story),
            'id' => $story->getId(),
        ]);
    }

    /**
     * @Route("/story/list", name="story_list")
     */
    public function storyListAction()
    {
        $stories = $this->getDoctrine()->getRepository('AppBundle:Lovestory')->findAll();
        
        return $this->render(':Lovestory:list.html.twig', [
           'stories' => $stories, 
        ]);
    }

    /**
     * @Route("/story/delete/{id}", name="story_delete")
     */
    public function storyDeleteAction(Lovestory $story)
    {
        $this->get('lovestory.manager')->delete($story);

        return $this->redirectToRoute('story_list');
    }

    /**
     * @Route("/adddranslation/{entity}/{id}", name="add_translation")
     */
    public function addTranslation(Request $request)
    {
        $entity = str_replace('AppBundle\\Entity\\','',$request->attributes->get('entity'));
        $object = $this->getDoctrine()->getRepository($request->attributes->get('entity'))->find($request->attributes->get('id'));
        
        $className = 'AppBundle\\Entity\\'.$entity;
        
        $newObject = new $className;
        $form = $this->createForm("AppBundle\\Form\\".$entity."Type", $newObject);

        if( $form->isValid() ) {
            $newObject->setTranslatableLocale('ct');
            $this->get('lovestory.manager')->save($newObject);

            $this->redirectToRoute('story_list', [
                'id' => $newObject->getId(),
            ]);
        }
        
        return $this->render(':Lovestory:new.html.twig', [
            'form' => $form->createView(),
            'object' => $object,
        ]);
    }

    /**
     * @Route("/role", name="role")
     */
    public function roleAction(Request $request)
    {
        $roles = $this->getDoctrine()->getRepository("AppBundle:Role")->findAll();

        $role = new Role();
        $form = $this->createForm(RoleType::class, $role);
        
        $form->handleRequest($request);
        
        if( $form->isValid() ) {
            $this->get('role.manager')->save($role);

            $this->redirectToRoute('role');
        }

        return $this->render(':role:list.html.twig', [
            'roles' => $roles,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/role/delete/{id}", name="role_delete")
     */
    public function roleDeleteAction(Role $role)
    {
        $this->get('role.manager')->delete($role);

        return $this->redirectToRoute('role');
    }
}