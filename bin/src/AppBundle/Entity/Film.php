<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Film
 *
 * @ORM\Table(name="film", indexes={@ORM\Index(name="ext_realisateur_id", columns={"ext_realisateur_id"})})
 * @ORM\Entity
 */
class Film
{
    /**
     * @var string
     *
     * @ORM\Column(name="titre", type="text", length=255, nullable=false)
     */
    private $titre;

    /**
     * @var string
     *
     * @ORM\Column(name="synopsis", type="text", length=65535, nullable=true)
     */
    private $synopsis;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="duree", type="time", nullable=true)
     */
    private $duree;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="date_sortie", type="datetime", nullable=false)
     */
    private $dateSortie;

    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var \AppBundle\Entity\Realisateur
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Realisateur")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="ext_realisateur_id", referencedColumnName="id")
     * })
     */
    private $extRealisateur;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="AppBundle\Entity\Acteur", mappedBy="extFilm")
     */
    private $extActeur;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->extActeur = new \Doctrine\Common\Collections\ArrayCollection();
    }

}

