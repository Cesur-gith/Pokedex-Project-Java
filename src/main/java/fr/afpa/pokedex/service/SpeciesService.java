package fr.afpa.pokedex.service;


import fr.afpa.pokedex.model.Species;
import fr.afpa.pokedex.repository.SpeciesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SpeciesService {

    @Autowired
    private SpeciesRepository speciesRepository;



    public List<Species> getAllSpecies() {
        return speciesRepository.findAll();
    }

    public List<Species> getAll() {
        return speciesRepository.findAll();
    }

    public static void save(Species species) {
        SpeciesService.save(species);
    }
}
