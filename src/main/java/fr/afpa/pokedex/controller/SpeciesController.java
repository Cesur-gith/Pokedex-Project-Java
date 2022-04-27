package fr.afpa.pokedex.controller;


import fr.afpa.pokedex.model.Pokemon;
import fr.afpa.pokedex.model.Species;
import fr.afpa.pokedex.service.PokemonService;
import fr.afpa.pokedex.service.SpeciesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SpeciesController {


    @Autowired
    private SpeciesService speciesService;


    @GetMapping("/species")
    public String pokemonPage(Model model , @RequestParam Long id) {
        Pokemon species = speciesService.getOneById(id);
        System.out.println(species);
        model.addAttribute("pokemons" , species  );
        return "pokemon";
    }

}
