package fr.afpa.pokedex.controller;

import fr.afpa.pokedex.model.Type;
import fr.afpa.pokedex.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;


@Controller
public class TypeController {

    @Autowired
    private TypeService typeService;

    @GetMapping("/pokemonTypes")
    public String typePage(Model model) {
        List<Type> type = typeService.getAllType();
        model.addAttribute("type", type);
        return "pokemonTypes";

    }

}
