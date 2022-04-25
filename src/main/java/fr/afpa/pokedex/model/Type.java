package fr.afpa.pokedex.model;

import javax.persistence.*;

@Entity
public class Type {


    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "type_seq")
    @SequenceGenerator(name = "type_seq", initialValue = 1000, allocationSize = 1)

    private Long id;
    private String label;
    private String description;


}
