package fr.afpa.pokedex.service;


import fr.afpa.pokedex.model.Pokemon;
import fr.afpa.pokedex.model.Type;
import fr.afpa.pokedex.repository.TypeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TypeService {

    @Autowired
    private TypeRepository typeRepository;


    public List<Type> getAllType() {
        return typeRepository.findAll();
    }
}

