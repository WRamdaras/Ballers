<?php

namespace App\Form;

use App\Entity\Clubs;
use App\Entity\Players;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints\File;

class PlayerType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name')
            ->add('age')
            ->add('nationality')
            ->add('team')
            ->add('clubs', EntityType::class, [
                'class' => Clubs::class,
                'choice_label' => 'name',
                'multiple' => true,
            ])
            ->add('trophy')
            ->add('position')
            ->add('goals')
            ->add('assists')
            ->add('imgFile', FileType::class, [
                    'label' => 'Image (IMG file)',
                    'mapped' => false,
                    'required' => false,
                    'constraints' => [
                        new File([
                            'maxSize' => '10G',
                            'mimeTypes' => [
                                'image/*',
                            ],
                            'mimeTypesMessage' => 'Please upload a valid image',
                        ])
                    ],
                ]
            )
            ->add('submit', SubmitType::class, ['label' => 'Submit', 'attr' => ['class' => 'bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline']]);
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Players::class,
        ]);
    }
}
