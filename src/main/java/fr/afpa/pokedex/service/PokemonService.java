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


         public List<Pokemon> getAll() {
            return pokemonRepository.findAll();

    }
        public Pokemon  getOneById(Long id) {
            return pokemonRepository.findOneById(id);
    }

        public void save(Pokemon pokemon) {
             pokemonRepository.save(pokemon);

    }


    public void delete(Long id) {
        pokemonRepository.deleteById(id);

    }
}



