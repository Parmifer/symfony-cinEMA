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
     * @ORM\ManyToMany(targetEntity="AppBundle\Entity\Film", mappedBy="extActeur")
     */
    private $extFilm;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->extFilm = new \Doctrine\Common\Collections\ArrayCollection();
    }


    /**
     * Set prenom
     *
     * @param string $prenom
     *
     * @return Acteur
     */
    public function setPrenom($prenom)
    {
        $this->prenom = $prenom;

        return $this;
    }

    /**
     * Get prenom
     *
     * @return string
     */
    public function getPrenom()
    {
        return $this->prenom;
    }

    /**
     * Set nom
     *
     * @param string $nom
     *
     * @return Acteur
     */
    public function setNom($nom)
    {
        $this->nom = $nom;

        return $this;
    }

    /**
     * Get nom
     *
     * @return string
     */
    public function getNom()
    {
        return $this->nom;
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
     * Add extFilm
     *
     * @param \AppBundle\Entity\Film $extFilm
     *
     * @return Acteur
     */
    public function addExtFilm(\AppBundle\Entity\Film $extFilm)
    {
        $this->extFilm[] = $extFilm;

        return $this;
    }

    /**
     * Remove extFilm
     *
     * @param \AppBundle\Entity\Film $extFilm
     */
    public function removeExtFilm(\AppBundle\Entity\Film $extFilm)
    {
        $this->extFilm->removeElement($extFilm);
    }

    /**
     * Get extFilm
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getExtFilm()
    {
        return $this->extFilm;
    }
    
    /**
     * Retourne une chaine correspondant à l'acteur de l'objet courrant.
     * 
     * @return string
     */
    public function __toString() {
        return $this->prenom . ' ' . $this->nom;
    }
}
