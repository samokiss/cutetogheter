<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

/**
 * Class BlogController
 * @package AppBundle\Controller
 * @route("/blog")
 */
class BlogController extends Controller
{
    /**
     * @route("/", name="blog_index")
     */
    public function indexAction()
    {
        return $this->render(':blog:index.html.twig');
    }
}
