<?php
/**
 * Created by PhpStorm.
 * User: samuelgomis
 * Date: 19/05/15
 * Time: 22:39
 */

namespace AppBundle\Helper;


use Doctrine\ORM\EntityManager;

class TextHelper {
    
    /**
     * @var EntityManager
     */
    private $em;
    
    public function __construct(EntityManager $em)
    {
        $this->em = $em;
    }

    /**
     * get text for section 
     * @param  
     * @return array
     */
    public function getWebSiteText($slug)
    {
        $texts = $this->em->getRepository('AppBundle:WebsiteText')->findOneBy(['slug' => $slug]);

        return $texts;
    }
}