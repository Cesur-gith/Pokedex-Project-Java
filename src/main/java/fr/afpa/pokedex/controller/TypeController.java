package fr.afpa.pokedex.controller;

import fr.afpa.pokedex.service.SpeciesService;
import fr.afpa.pokedex.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class TypeController {

    @Autowired
    private TypeService typeService;

}
