<?php

namespace AppBundle\Form;

use AppBundle\Entity\Wedding;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\CollectionType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\OptionsResolver\OptionsResolver;

class WeddingType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('date', DateType::class)
            ->add('address', TextType::class)
            ->add('city', TextType::class)
            ->add('country', TextType::class)
            ->add('presence', TextType::class)
            ->add('verse', TextType::class)
            ->add('pictures', CollectionType::class, array(
                'entry_type'   => PictureType::class,
                'allow_add'    => true,
            ))
            ->add('save', SubmitType::class)
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => Wedding::class,
        ));
    }
}