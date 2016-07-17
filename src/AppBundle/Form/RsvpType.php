<?php

namespace AppBundle\Form;

use Doctrine\ORM\EntityRepository;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class RsvpType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name', TextType::class, array(
                'label'  => false,
                'attr' => array('placeholder' => 'Prénom et nom')
            ))
            ->add('guestNumber', ChoiceType::class, array(
                'choices'  => array(
                    '1 personne' => 1,
                    '2 personnes' => 2,
                    '3 personnes' => 3,
                    '4 personnes' => 4,
                ),
                'label'  => false,
            ))
            ->add('user', EntityType::class,array(
                'class' => 'AppBundle:User',
                'query_builder' => function (EntityRepository $er) {
                    return $er->createQueryBuilder('u')
                        ->join('u.role', 'r')
                        ->where('r.role = :groom')
                        ->orWhere('r.role = :bride')
                        ->setParameter('groom', 'groom')
                        ->setParameter('bride', 'bride')
                        ->orderBy('u.firstname', 'ASC')
                        ;
                },
                'choice_label' => 'firstname',
                'label'  => false
            ))
            ->add('message',TextareaType::class, array(
                'label'  => false,
                'attr' => array('placeholder' => 'Message (Falcultatif)')
            ))
            ->add('submit',SubmitType::class)
        ;
    }
    
    /**
     * @param OptionsResolver $resolver
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AppBundle\Entity\Rsvp'
        ));
    }
}
