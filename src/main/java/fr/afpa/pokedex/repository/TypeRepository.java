package fr.afpa.pokedex.repository;

import fr.afpa.pokedex.model.Pokemon;
import fr.afpa.pokedex.model.Type;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TypeRepository extends JpaRepository<Type, Long>  {


    @Query(value = "select * from type;", nativeQuery = true)
    public List<Type> findAll();




}
