<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Film
 *
 * @ORM\Table(name="film", indexes={@ORM\Index(name="ext_realisateur_id", columns={"ext_realisateur_id"}), @ORM\Index(name="ext_genre_id", columns={"ext_genre_id"})})
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
     * @var \AppBundle\Entity\Genre
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Genre")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="ext_genre_id", referencedColumnName="id")
     * })
     */
    private $extGenre;

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


    /**
     * Set titre
     *
     * @param string $titre
     *
     * @return Film
     */
    public function setTitre($titre)
    {
        $this->titre = $titre;

        return $this;
    }

    /**
     * Get titre
     *
     * @return string
     */
    public function getTitre()
    {
        return $this->titre;
    }

    /**
     * Set synopsis
     *
     * @param string $synopsis
     *
     * @return Film
     */
    public function setSynopsis($synopsis)
    {
        $this->synopsis = $synopsis;

        return $this;
    }

    /**
     * Get synopsis
     *
     * @return string
     */
    public function getSynopsis()
    {
        return $this->synopsis;
    }

    /**
     * Set duree
     *
     * @param \DateTime $duree
     *
     * @return Film
     */
    public function setDuree($duree)
    {
        $this->duree = $duree;

        return $this;
    }

    /**
     * Get duree
     *
     * @return \DateTime
     */
    public function getDuree()
    {
        return $this->duree;
    }

    /**
     * Set dateSortie
     *
     * @param \DateTime $dateSortie
     *
     * @return Film
     */
    public function setDateSortie($dateSortie)
    {
        $this->dateSortie = $dateSortie;

        return $this;
    }

    /**
     * Get dateSortie
     *
     * @return \DateTime
     */
    public function getDateSortie()
    {
        return $this->dateSortie;
    }

    /**
     * Get id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set extRealisateur
     *
     * @param \AppBundle\Entity\Realisateur $extRealisateur
     *
     * @return Film
     */
    public function setExtRealisateur(\AppBundle\Entity\Realisateur $extRealisateur = null)
    {
        $this->extRealisateur = $extRealisateur;

        return $this;
    }

    /**
     * Get extRealisateur
     *
     * @return \AppBundle\Entity\Realisateur
     */
    public function getExtRealisateur()
    {
        return $this->extRealisateur;
    }

    /**
     * Set extGenre
     *
     * @param \AppBundle\Entity\Genre $extGenre
     *
     * @return Film
     */
    public function setExtGenre(\AppBundle\Entity\Genre $extGenre = null)
    {
        $this->extGenre = $extGenre;

        return $this;
    }

    /**
     * Get extGenre
     *
     * @return \AppBundle\Entity\Genre
     */
    public function getExtGenre()
    {
        return $this->extGenre;
    }

    /**
     * Add extActeur
     *
     * @param \AppBundle\Entity\Acteur $extActeur
     *
     * @return Film
     */
    public function addExtActeur(\AppBundle\Entity\Acteur $extActeur)
    {
        $this->extActeur[] = $extActeur;

        return $this;
    }

    /**
     * Remove extActeur
     *
     * @param \AppBundle\Entity\Acteur $extActeur
     */
    public function removeExtActeur(\AppBundle\Entity\Acteur $extActeur)
    {
        $this->extActeur->removeElement($extActeur);
    }

    /**
     * Get extActeur
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getExtActeur()
    {
        return $this->extActeur;
    }
}
