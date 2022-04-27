package fr.afpa.pokedex.controller;


import fr.afpa.pokedex.model.Species;
import fr.afpa.pokedex.service.SpeciesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class SpeciesController {

    @Autowired
    private SpeciesService speciesService;

    @GetMapping("/speciesList")
    public String listPage(Model model) {
        List<Species> species = speciesService.getAllSpecies();
        model.addAttribute("species", species);
        return "speciesList";
    }

    @GetMapping("/species-form")
    public String formAddressPage(Model model) {
        Species species = new Species();
        model.addAttribute("species", species);
        return "formSpecies";
    }

    @PostMapping("/add-species")
    public String addSpecies(@ModelAttribute Species species) {
        System.out.println("POST:" + species);
        SpeciesService.save(species);
        return "redirect:/info";
    }

}
