<?php
/**
 * Created by PhpStorm.
 * User: Samuel
 * Date: 16-05-30
 * Time: 7:03 PM
 */

namespace AppBundle\Controller;


use AppBundle\Entity\Gallery;
use AppBundle\Entity\Lovestory;
use AppBundle\Entity\Picture;
use AppBundle\Entity\Role;
use AppBundle\Entity\Rsvp;
use AppBundle\Entity\WebsiteText;
use AppBundle\Entity\Wedding;
use AppBundle\Form\GalleryType;
use AppBundle\Form\LovestoryType;
use AppBundle\Form\RoleType;
use AppBundle\Form\RsvpType;
use AppBundle\Form\WebsiteTextType;
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

            return $this->redirectToRoute('wedding_edit', [
                'id' => $wedding->getId(),
            ]);
        }

        return $this->render(':wedding:new.html.twig', [
           'form' => $form->createView(),
        ]);
    }

    /**
     * @param Request $request
     * @Route("/{id}", name="wedding_edit", defaults={"id":1}, requirements={
     *     "id": "\d+"
     * })
     */
    public function weddingEditAction(Wedding $wedding, Request $request)
    {

        $form = $this->createForm(WeddingType::class,$wedding);

        $form->handleRequest($request);

        if( $form->isValid() ) {
            $this->get('wedding.manager')->save($wedding);

            return $this->redirectToRoute('wedding_edit', [
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

            return $this->redirectToRoute('story_list', [
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

            return $this->redirectToRoute('story_list', [
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
     * @Route("/translation", name="translation")
     */
    public function translationAction()
    {
        $repository = $this->getDoctrine()->getRepository('Gedmo\Translatable\Entity\Translation');
        $translations = $repository->findAll();
        
        return $this->render(':admin:translation.hmtl.twig',[
            'translations' => $translations
        ]);
    }

    /**
     * @Route("/role", name="role")
     */
    public function roleAction(Request $request)
    {
        $roles = $this->getDoctrine()->getRepository("AppBundle:Role")->findAll();

        return $this->render(':role:list.html.twig', [
            'roles' => $roles,
        ]);
    }

    /**
     * @Route("/role/new", name="role_new")
     */
    public function roleNewAction(Request $request)
    {
        $form = $this->createForm(RoleType::class, $role);

        $form->handleRequest($request);

        if( $form->isValid() ) {
            $this->get('role.manager')->save($role);

            return $this->redirectToRoute('role');
        }

        return $this->render(':role:new.html.twig', [

            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/role/edit/{id}", name="role_edit")
     */
    public function roleEditAction(Request $request, Role $role)
    {
        $form = $this->createForm(RoleType::class, $role);

        $form->handleRequest($request);

        if( $form->isValid() ) {
            $this->get('role.manager')->save($role);

            return $this->redirectToRoute('role');
        }

        return $this->render(':role:new.html.twig', [
            
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
    
    /**
     * @Route("/gallery", name="gallery_edit")
     */
    public function galleryEditAction(Request $request)
    {
        $gallery = new Gallery();
        $form = $this->createForm(GalleryType::class, $gallery);

        $fullGallery = $this->getDoctrine()->getRepository("AppBundle:Gallery")->findAll();

        $form->handleRequest($request);

        if( $form->isValid() ) {
            $this->get('gallery.manager')->save($gallery);

            return $this->redirectToRoute('gallery_edit',[
                'fullGallery' => $fullGallery,
            ]);
        }
        
        return $this->render(':gallery:new.html.twig',[
            'fullGallery' => $fullGallery,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/gallery/delete/{id}", name="gallery_delete")
     */
    public function galleryDeleteAction(Gallery $gallery)
    {
        $this->get('gallery.manager')->delete($gallery);

        return $this->redirectToRoute('gallery_edit');
    }

    /**
     * @Route("/guest/list", name="guest_list")
     */
    public function guestListAction()
    {
        $couple = $this->getDoctrine()->getRepository('AppBundle:User')->findMarried();
        $list = $this->getDoctrine()->getRepository('AppBundle:Rsvp')->findAll();

        return $this->render(':guest:list.html.twig', [
            'couple' => $couple,
            'list' => $list,
        ]);
    }

    /**
     * @Route("/guest/delete/{id}", name="guest_delete")
     */
    public function guestDeleteAction(Rsvp $rsvp)
    {
        $this->get('rsvp.manager')->delete($rsvp);

        return $this->redirectToRoute('guest_list');
    }

    /**
     * @Route("/guest/edit/{id}", name="guest_edit")
     */
    public function guestEditAction(Rsvp $rsvp, Request $request)
    {
        $form = $this->createForm(RsvpType::class, $rsvp);

        $form->handleRequest($request);

        if( $form->isValid() ) {
            $this->get('rsvp.manager')->save($rsvp);

            return $this->redirectToRoute('guest_list');
        }

        return $this->render(':guest:edit.html.twig',[
            'form' => $form->createView(),
        ]);
    }

    /**
     * render controller for header admin
     */
    public function headerAdminAction()
    {
        $wedding = $this->getDoctrine()->getRepository('AppBundle:Wedding')->find(1);

        return $this->render('::header_admin.html.twig', [
            'wedding' => $wedding,
        ]);
    }
    
    /**
     * modify website title and description section
     *
     * @Route("/text/list", name="text_list")
     */
    public function websiteTextListAction(Request $request)
    {
        $texts = $this->getDoctrine()->getRepository('AppBundle:WebsiteText')->findAll();
        
        return $this->render(':websitetext:list.html.twig', [
            'texts' => $texts,
        ]);
    }

    /**
     * modify website title and description section
     *
     * @Route("/text/new/", name="text_new")
     */
    public function websiteTextNewAction(Request $request)
    {
        $websiteText = new WebsiteText();
        $texts = $this->getDoctrine()->getRepository('AppBundle:WebsiteText')->findAll();

        $form = $this->createForm(WebsiteTextType::class,$websiteText);

        $form->handleRequest($request);

        if ($form->isValid() ) {
            $this->get('websitetext.manager')->save($websiteText);

            return $this->redirectToRoute('text_list');
        }

        return $this->render(':websitetext:edit.html.twig', [
            'form' => $form->createView(),
            'texts' => $texts,
        ]);
    }

    /**
     * modify website title and description section
     *
     * @Route("/text/edit/{id}", name="text_edit")
     */
    public function websiteTextEditAction(Request $request, WebsiteText $websiteText)
    {
        $texts = $this->getDoctrine()->getRepository('AppBundle:WebsiteText')->findAll();

        $form = $this->createForm(WebsiteTextType::class,$websiteText);

        $form->handleRequest($request);

        if ($form->isValid() ) {
            $this->get('websitetext.manager')->save($websiteText);

            return $this->redirectToRoute('text_list');
        }

        return $this->render(':websitetext:edit.html.twig', [
            'form' => $form->createView(),
            'texts' => $texts,
        ]);
    }

    /**
     * @Route("/text/delete/{id}", name="text_delete")
     */
    public function textDeleteAction(WebsiteText $websiteText)
    {
        $this->get('websitetext.manager')->delete($websiteText);

        return $this->redirectToRoute('text_list');
    }

    /**
     * @Route("/picture", name="picture_edit")
     */
    public function pictureEditAction(Request $request)
    {
        $fullGallery = $this->getDoctrine()->getRepository("AppBundle:Picture")->findAll();
        return $this->render(':gallery:editpicture.html.twig',[
            'fullGallery' => $fullGallery,
        ]);
    }

    /**
     * @Route("/picture/delete/{id}", name="picture_delete")
     */
    public function pictureDeleteAction(Picture $picture)
    {
        $this->get('picture.manager')->delete($picture);

        return $this->redirectToRoute('picture_edit');
    }

}