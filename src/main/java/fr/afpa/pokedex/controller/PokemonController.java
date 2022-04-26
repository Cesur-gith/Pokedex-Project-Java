package fr.afpa.pokedex.controller;

import fr.afpa.pokedex.model.Pokemon;
import fr.afpa.pokedex.service.PokemonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class PokemonController {

    @Autowired
    private PokemonService pokemonService;

    @GetMapping("/pokemonLists")
    public String listPage(Model model) {
        List<Pokemon>pokemon = pokemonService.getAllPokemon();
        model.addAttribute("pokemon", pokemon);
        return "pokemonLists";
    }

    @GetMapping("/pokemonDetail")
    public String detailPage(Model model) {
        List<Pokemon>pokemon = pokemonService.getAllPokemonDetail();
        model.addAttribute("pokemon", pokemon);
        return "pokemonDetail";
    }



    }


