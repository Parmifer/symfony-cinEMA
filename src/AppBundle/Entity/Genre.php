<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Gedmo\Mapping\Annotation as Gedmo;

/**
 * Genre
 *
 * @ORM\Table(name="genre")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\GenreRepository")
 */
class Genre
{
    /**
     * @var string
     *
     * @ORM\Column(name="libelle", type="text", length=255, nullable=true)
     */
    private $libelle;

    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;
    
    /**
     * @var string 
     * 
     * @Gedmo\Slug(fields={"libelle"}, updatable=false, separator="-")
     * @ORM\Column(name="slug", type="text", length=255, nullable=true)
     */
    private $slug;

    /**
     * Set libelle
     *
     * @param string $libelle
     *
     * @return Genre
     */
    public function setLibelle($libelle)
    {
        $this->libelle = $libelle;

        return $this;
    }

    /**
     * Get libelle
     *
     * @return string
     */
    public function getLibelle()
    {
        return $this->libelle;
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
     * @return Genre
     */
    function setSlug($slug) 
    {
        $this->slug = $slug;
    }
        
    /**
     * Retourne une chaine correspondant au genre de l'objet courrant.
     * 
     * @return string
     */
    public function __toString() {
        return $this->libelle;
    }
}
