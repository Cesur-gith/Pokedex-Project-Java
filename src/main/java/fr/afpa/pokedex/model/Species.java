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
    private String imageUrl;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    @Override
    public String toString() {
        return "Species{" +
                "id=" + id +
                ", label='" + label + '\'' +
                ", description='" + description + '\'' +
                ", imageUrl='" + imageUrl + '\'' +
                '}';
    }
}
