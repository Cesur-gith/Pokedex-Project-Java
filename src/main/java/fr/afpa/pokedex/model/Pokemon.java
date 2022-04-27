package fr.afpa.pokedex.model;

import javax.persistence.*;
import java.util.List;


@Entity
public class Pokemon {

        @Id
        @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "pok_seq")
        @SequenceGenerator(name = "pok_seq", initialValue = 1000, allocationSize = 1)
        private Long id;

        private String name;
        private int attack;
        private int defense;
        private int speed;
        private int attSpe;
        private int defSpe;
        private String imageUrl;


        @ManyToMany
        private List<Type> type;

        @ManyToOne
        private Species species;

        public Long getId() {
                return id;
        }

        public void setId(Long id) {
                this.id = id;
        }

        public String getName() {
                return name;
        }

        public void setName(String name) {
                this.name = name;
        }

        public int getAttack() {
                return attack;
        }

        public void setAttack(int attack) {
                this.attack = attack;
        }

        public int getDefense() {
                return defense;
        }

        public void setDefense(int defense) {
                this.defense = defense;
        }

        public int getSpeed() {
                return speed;
        }

        public void setSpeed(int speed) {
                this.speed = speed;
        }

        public int getAttSpe() {
                return attSpe;
        }

        public void setAttSpe(int attSpe) {
                this.attSpe = attSpe;
        }

        public int getDefSpe() {
                return defSpe;
        }

        public void setDefSpe(int defSpe) {
                this.defSpe = defSpe;
        }

        public String getImageUrl() {
                return imageUrl;
        }

        public void setImageUrl(String imageUrl) {
                this.imageUrl = imageUrl;
        }

        public List<Type> getType() {
                return type;
        }

        public void setType(List<Type> type) {
                this.type = type;
        }

        public Species getSpecies() {
                return species;
        }

        public void setSpecies(Species species) {
                this.species = species;
        }

        @Override
        public String toString() {
                return "Pokemon{" +
                        "id=" + id +
                        ", name='" + name + '\'' +
                        ", attack=" + attack +
                        ", defense=" + defense +
                        ", speed=" + speed +
                        ", attSpe=" + attSpe +
                        ", defSpe=" + defSpe +
                        ", imageUrl='" + imageUrl + '\'' +
                        ", type=" + type +
                        ", species=" + species +
                        '}';
        }
}
