<?php

namespace AppBundle\Controller;

use AppBundle\Entity\User;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class DefaultController extends Controller
{

    /**
     * @Route("/", name="homepage")
     */
    public function indexAction(Request $request)
    {
        $user = $this->getDoctrine()->getRepository("AppBundle:User")->findAll();
        return $this->render('default/index.html.twig', [
            'user' => $user,
        ]);
    }

    /**
     * use in the view index
     */
    public function introAction()
    {
        $wedding = $this->getDoctrine()->getRepository('AppBundle:Wedding')->find(1);
        return $this->render(':default:intro.html.twig', [
           'wedding' => $wedding, 
        ]);
    }
    
    /**
     * use in the view index
     */
    public function coupleAction()
    {
        $users = $this->getDoctrine()->getRepository('AppBundle:User')->findMarried();
        return $this->render(':default:couple.html.twig', [
            'users' => $users,
        ]);
    }
}
