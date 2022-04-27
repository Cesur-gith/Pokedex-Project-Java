package fr.afpa.pokedex.repository;

import fr.afpa.pokedex.model.Species;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;



@Repository
public interface SpeciesRepository extends JpaRepository<Species, Long> {


    @Query(value = "SELECT * FROM species", nativeQuery = true)
    public List<Species> findAll();


}
