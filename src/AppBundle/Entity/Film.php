<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Gedmo\Mapping\Annotation as Gedmo;

/**
 * Film
 *
 * @ORM\Table(name="film", indexes={@ORM\Index(name="ext_realisateur_id", columns={"ext_realisateur_id"}), @ORM\Index(name="ext_genre_id", columns={"ext_genre_id"})})
 * @ORM\Entity(repositoryClass="AppBundle\Repository\FilmRepository")
 */
class Film
{
    /**
     * @var string
     *
     * @Assert\Length(
     *      min = 2,
     *      max = 255,
     *      minMessage = "Le titre doit faire au moins {{ limit }} caractères",
     *      maxMessage = "Le titre ne peux pas exéder {{ limit }} caractères"
     * )
     * @ORM\Column(name="titre", type="text", length=255, nullable=false)
     */
    private $titre;
    

    /**
     * @var string 
     * 
     * @Gedmo\Slug(fields={"titre"}, updatable=false, separator="-")
     * @ORM\Column(name="slug", type="text", length=255, nullable=true)
     */
    private $slug;
    
    /**
     * @var string
     * 
     * @Assert\Length(
     *      min = 4,
     *      max = 60000,
     *      minMessage = "Le synopsis doit faire au moins {{ limit }} caractères",
     *      maxMessage = "Le synopsis ne peux pas exéder {{ limit }} caractères"
     * )
     * @ORM\Column(name="synopsis", type="text", length=65535, nullable=true)
     */
    private $synopsis;
    
    /**
     * @var string 
     * 
     * @ORM\Column(name="affiche_url", type="text", length=255, nullable=true)
     */
    private $afficheUrl;
    
    /**
     * @var \DateTime
     *
     * @Assert\DateTime()
     * @ORM\Column(name="duree", type="time", nullable=true)
     */
    private $duree;

    /**
     * @var \DateTime
     *
     * @Assert\DateTime()
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
     * @ORM\ManyToMany(targetEntity="AppBundle\Entity\Acteur", inversedBy="extFilm")
     * @ORM\JoinTable(name="acteur_jouer_film",
     *   joinColumns={
     *     @ORM\JoinColumn(name="ext_film_id", referencedColumnName="id")
     *   },
     *   inverseJoinColumns={
     *     @ORM\JoinColumn(name="ext_acteur_id", referencedColumnName="id")
     *   }
     * )
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
     * Get slug
     *
     * @return string
     */
    function getSlug()
    {
        return $this->slug;
    }

    /**
     * Set slug
     *
     * @param string $slug
     *
     * @return Film
     */
    function setSlug($slug)
    {
        $this->slug = $slug;
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
     * Get afficheUrl
     *
     * @return string
     */
    function getAfficheUrl() 
    {
        return $this->afficheUrl;
    }

    /**
     * Set afficheUrl
     *
     * @param string $afficheUrl
     * 
     * @return Film
     */
    function setAfficheUrl($afficheUrl) 
    {
        $this->afficheUrl = $afficheUrl;
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
    
    /**
     * Retourne une chaine correspondant au titre de l'objet courrant.
     * 
     * @return string
     */
    public function __toString() {
        return $this->titre;
    }
}
