<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Rsvp;
use AppBundle\Entity\User;
use AppBundle\Form\RsvpType;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

/**
 * Class DefaultController
 * @package AppBundle\Controller
 */
class DefaultController extends Controller
{

    /**
     * @Route("/", name="homepage")
     */
    public function indexAction(Request $request)
    {
        $wedding = $this->getDoctrine()->getRepository('AppBundle:Wedding')->find(1);
        $user = $this->getDoctrine()->getRepository("AppBundle:User")->findAll();
        return $this->render('default/index.html.twig', [
            'user' => $user,
            'wedding' => $wedding,
        ]);
    }

    /**
     * render controller use in the view index
     */
    public function introAction()
    {
        $wedding = $this->getDoctrine()->getRepository('AppBundle:Wedding')->find(1);
        return $this->render(':default:intro.html.twig', [
            'wedding' => $wedding,
        ]);
    }

    /**
     * render controller use in the view index
     */
    public function coupleAction()
    {
        $users = $this->getDoctrine()->getRepository('AppBundle:User')->findMarried();
        return $this->render(':default:couple.html.twig', [
            'users' => $users,
        ]);
    }

    /**
     * render controller use in the view index
     *
     * @return mixed
     */
    public function storyAction()
    {
        $stories = $this->getDoctrine()->getRepository('AppBundle:Lovestory')->findAllBydate();
        return $this->render(':default:story.html.twig', [
            'stories' => $stories,
        ]);
    }

    /**
     * render controller use in the view index
     *
     * @return mixed
     */
    public function eventAction()
    {
        $articles = $this->getDoctrine()->getRepository('AppBundle:Blog')->findAllBydate();
        return $this->render(':default:event.html.twig', [
            'articles' => $articles,
        ]);
    }

    /**
     * render controller use in the view :default:index.html.twig
     */
    public function galleryAction()
    {
        $gallery = $this->get('gallery.manager')->getRandomResult();
        return $this->render(':default:gallery.html.twig', [
            'gallery' => $gallery,
        ]);
    }

    /**
     * render controller use in the view
     * @param Request $request
     * @Route("/sendajaxrsvp", name="rsvp", options={"expose"=true})
     * @Method("POST"))
     */
    public function rsvpAction(Request $request)
    {
        $rsvp = new Rsvp();
        $form = $this->createForm(RsvpType::class, $rsvp, ['user' => $this->getUser()]);
        $groom = $this->getDoctrine()->getRepository('AppBundle:User')->findGromm();


        $form->handleRequest($request);

        if ($request->isMethod('POST')) {
            $data = $request->request->all();

            $this->get('rsvp.manager')->save($data);

            return new Response(json_encode(array('status' => 'success')));
            $this->get('rsvp.manager')->sendMail();
        }

        return $this->render(':default:rsvp.html.twig', [
            'form' => $form->createView(),
            'groom' => $groom,
        ]);
    }


    /**
     * @Route("/guestlist", name="guestlist")
     */
    public function guestlistAction()
    {
        $couple = $this->getDoctrine()->getRepository('AppBundle:User')->findMarried();

        $list = $this->getDoctrine()->getRepository('AppBundle:Rsvp')->findAll();

        $total = $this->get('rsvp.manager')->getTotal($list);

        return $this->render(':default:guestlist.html.twig', [
            'list' => $list,
            'couple' => $couple,
            'total' => $total,
        ]);
    }

    /**
     * render controller use in the view
     */
    public function peopleAction()
    {
        $list = $this->getDoctrine()->getRepository('AppBundle:User')->findImportantPeople();
        $pastor = $this->getDoctrine()->getRepository('AppBundle:User')->findPastor();

        return $this->render(':default:people.html.twig', [
            'list' => $list,
            'pastor' => $pastor,
        ]);
    }

    /**
     * render controller for footer
     */
    public function footerAction()
    {
        $wedding = $this->getDoctrine()->getRepository('AppBundle:Wedding')->find(1);

        return $this->render('  ::footer.html.twig', [
            'wedding' => $wedding,
        ]);
    }

    /**
     * @Route("/wedding/{folder}", name="wedding_picture")
     */
    public function weddingDayAction($folder)
    {
        $gallery = $this->getDoctrine()->getRepository('AppBundle:WeddingGallery')->findBy(
            ['title' => $folder],
            null,
            10
        );
        return $this->render(':default:weddingday.html.twig', [
            'gallery' => $gallery,
            'folder' => $folder,
        ]);
    }

    /**
     * @Route("/ajax/loadpicture", name="ajax/load/picture ")
     * @param Request $request
     */
    public function ajaxLoadPicture(Request $request)
    {
        $folder = $request->get('offset');
        $offset = $request->get('offset');
        $limit = $request->get('limit');

        $gallery = $this->getDoctrine()->getRepository('AppBundle:WeddingGallery')->findBy(
            ['title' => $folder],
            null,
            $limit,
            $offset
        );
        return $this->render(':default:weddingday.html.twig', [
            'gallery' => $gallery,
            'folder' => $folder,
        ]);
    }

}
