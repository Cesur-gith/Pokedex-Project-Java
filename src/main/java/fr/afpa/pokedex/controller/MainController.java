package fr.afpa.pokedex.controller;

import fr.afpa.pokedex.model.Pokemon;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;


@Controller
public class MainController {

        @GetMapping("/")
        public String index(Model model) {
            String name = "Pokemon";
            model.addAttribute("name", name);
            return "index";
        }



}
