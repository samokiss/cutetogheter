<?php
/**
 * Created by PhpStorm.
 * User: Samuel
 * Date: 16-06-05
 * Time: 3:37 PM
 */

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Gedmo\Translatable\Entity\MappedSuperclass\AbstractTranslation;

/**
 * @ORM\Table(name="ext_translations_lovestory", indexes={
 *     @ORM\Index(name="story_translation_idx", columns={"locale", "object_class", "field", "foreign_key"})
 * })
 * @ORM\Entity(repositoryClass="Gedmo\Translatable\Entity\Repository\TranslationRepository")
 */
class LovestoryTranslation extends AbstractTranslation
{

}