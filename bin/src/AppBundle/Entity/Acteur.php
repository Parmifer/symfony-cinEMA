<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Acteur
 *
 * @ORM\Table(name="acteur")
 * @ORM\Entity
 */
class Acteur
{
    /**
     * @var string
     *
     * @ORM\Column(name="prenom", type="text", length=255, nullable=true)
     */
    private $prenom;

    /**
     * @var string
     *
     * @ORM\Column(name="nom", type="text", length=255, nullable=true)
     */
    private $nom;

    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="AppBundle\Entity\Film", inversedBy="extActeur")
     * @ORM\JoinTable(name="acteur_jouer_film",
     *   joinColumns={
     *     @ORM\JoinColumn(name="ext_acteur_id", referencedColumnName="id")
     *   },
     *   inverseJoinColumns={
     *     @ORM\JoinColumn(name="ext_film_id", referencedColumnName="id")
     *   }
     * )
     */
    private $extFilm;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->extFilm = new \Doctrine\Common\Collections\ArrayCollection();
    }

}

