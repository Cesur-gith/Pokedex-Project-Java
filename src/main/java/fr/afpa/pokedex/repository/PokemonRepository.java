package fr.afpa.pokedex.repository;

import fr.afpa.pokedex.model.Pokemon;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PokemonRepository extends JpaRepository<Pokemon, Long>{

    @Query(value = "select * from pokemon;", nativeQuery = true)
    public List<Pokemon> findAll();


    @Query(value="select * from pokemon where id = ?1", nativeQuery = true)
    Pokemon findOneById(Long id);
}

