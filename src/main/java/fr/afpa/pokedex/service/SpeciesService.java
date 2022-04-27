package fr.afpa.pokedex.service;


import fr.afpa.pokedex.model.Pokemon;
import fr.afpa.pokedex.repository.SpeciesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SpeciesService {

    @Autowired
    private SpeciesRepository speciesRepository;


    public Pokemon getOneById(Long id) {
        return speciesRepository.findOneById(id);
    }



}
