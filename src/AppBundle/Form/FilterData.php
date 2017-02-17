<?php

namespace AppBundle\Form;


/**
 * Classe container pour le formulaire de filtre des films par genre
 *
 * @author parmifer
 */
class FilterData 
{
    private $genre;
    
    /**
     * Constructor
     */
    public function __construct()
    {
        
    }
    
    function getGenre() {
        return $this->genre;
    }

    function setGenre($genre) {
        $this->genre = $genre;
    }

    /**
     * Retourne une chaine correspondant à l'acteur de l'objet courrant.
     * 
     * @return string
     */
    public function __toString() {
        return $this->genre;
    }

}
