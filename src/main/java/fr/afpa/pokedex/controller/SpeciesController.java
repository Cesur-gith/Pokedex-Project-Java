package fr.afpa.pokedex.controller;


import fr.afpa.pokedex.service.PokemonService;
import fr.afpa.pokedex.service.SpeciesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class SpeciesController {


    @Autowired
    private SpeciesService speciesService;

}
