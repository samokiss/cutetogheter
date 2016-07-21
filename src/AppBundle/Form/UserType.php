<?php

namespace AppBundle\Form;

use AppBundle\Entity\User;
use Doctrine\ORM\EntityRepository;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\BirthdayType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\OptionsResolver\OptionsResolver;

class UserType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('lastname', TextType::class)
            ->add('firstname', TextType::class)
            ->add('birthdate', BirthdayType::class/*, array(
                'widget' => 'single_text',
                'html5' => false,
                'attr' => ['class' => 'js-datepicker'],
            )*/)
            ->add('shortDescription', TextType::class)
            ->add('longDescription', TextType::class)
            ->add('role', EntityType::class, array(
                'class' => 'AppBundle:Role',
                'query_builder' => function (EntityRepository $er) {
                    return $er->createQueryBuilder('u')
                        ->orderBy('u.role', 'ASC');
                },
                'choice_label' => 'role',
            ))
            ->add('address', TextType::class, [
                'required' => false,
            ])
            ->add('city', TextType::class, [
                'required' => false,
            ])
            ->add('country', TextType::class, [
                'required' => false,
            ])
            ->add('phone', TextType::class, [
                'required' => false,
            ])
            ->add('mail', EmailType::class, [
                'required' => false,
            ])
            ->add('facebook', TextType::class, [
                'required' => false,
            ])
            ->add('imageFile', FileType::class, [
                'data_class' => null,
                'required' => false,
            ])
            ->add('enabled', ChoiceType::class, array(
                'choices' => array('Activé' => true, 'Désactivé' => false),
            ))
            ->add('sex', ChoiceType::class, array(
                'choices' => array('M' => true, 'F' => false),
            ))
            ->add('save', SubmitType::class);
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => User::class,
        ));
    }
}