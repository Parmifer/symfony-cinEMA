<?php

namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\TimeType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\OptionsResolver\OptionsResolver;

class FilmType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('titre', TextType::Class, ['label' => 'Titre'])
            ->add('synopsis', TextareaType::Class, ['label' => 'Synopsis'])
            ->add('duree', TimeType::Class, ['label' => 'Durée'])
            ->add('dateSortie', DateType::Class, ['label' => 'Date de sortie'])
            ->add('extRealisateur', null, ['label' => 'Réalisateur'])
            ->add('extGenre', null, ['label' => 'Genre'])
            ->add('extActeur', null, ['label' => 'Acteur(s)']);
    }
    
    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AppBundle\Entity\Film'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'appbundle_film';
    }


}
