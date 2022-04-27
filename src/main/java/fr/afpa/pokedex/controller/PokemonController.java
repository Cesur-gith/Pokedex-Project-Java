package fr.afpa.pokedex.controller;

import fr.afpa.pokedex.model.Pokemon;
import fr.afpa.pokedex.model.Species;
import fr.afpa.pokedex.model.Type;
import fr.afpa.pokedex.service.PokemonService;
import fr.afpa.pokedex.service.SpeciesService;
import fr.afpa.pokedex.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class PokemonController<pokemon> {

    @Autowired
    private PokemonService pokemonService;

    @Autowired
    private SpeciesService speciesService;

    @Autowired
    private TypeService typeService;

    @GetMapping("/pokemonLists")
    public String listPage(Model model) {
        List<Pokemon> pokemonList = pokemonService.getAllPokemon();
        model.addAttribute("pokemonList", pokemonList);
        return "pokemonLists";
    }

    @GetMapping("/pokemon")
    public String pokemonPage(Model model , @RequestParam Long id) {
        Pokemon pokemon = pokemonService.getOneById(id);
        System.out.println(pokemon);
        model.addAttribute("pokemon", pokemon);
        return "pokemon";
    }

    @GetMapping("/pokemon-form")
//    @RequestMapping(method = RequestMethod.GET, value = "/pokemon-form")
    public String formPokemon(Model model) {
        Pokemon pokemon = new Pokemon();
        model.addAttribute("pokemon", pokemon);

        List<Species> speciesList= speciesService.getAll();
        model.addAttribute("speciesList", speciesList);

        List<Type> typeList = typeService.getAll();
        model.addAttribute("typeList",typeList);
        return "formPokemon";
    }

    @PostMapping("/add-pokemon")
    public String addPokemon(@ModelAttribute Pokemon pokemon) {
        System.out.println("POST:" + pokemon);
        pokemonService.save(pokemon);
        return "redirect:/pokemonLists";
    }

    @PostMapping("/delete-pokemon")
    public String deletePokemon(Model model, Long id) {
        pokemonService.delete(id);
        return "redirect:/";
    }





}
