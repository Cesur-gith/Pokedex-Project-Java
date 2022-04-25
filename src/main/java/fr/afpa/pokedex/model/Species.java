package fr.afpa.pokedex.model;

import javax.persistence.*;

@Entity
public class Species {


    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "species_seq")
    @SequenceGenerator(name = "species_seq", initialValue = 1000, allocationSize = 1)

    private Long id;
    private String label;
    private String description;

}
