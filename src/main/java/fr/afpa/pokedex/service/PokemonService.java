package fr.afpa.pokedex.service;

import fr.afpa.pokedex.model.Pokemon;
import fr.afpa.pokedex.repository.PokemonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class PokemonService {

        @Autowired
        private PokemonRepository pokemonRepository;

        public List<Pokemon> getAllPokemon() {
            return pokemonRepository.findAll();
    }


}



