package fr.afpa.pokedex.model;

import javax.persistence.*;


@Entity
public class Pokedex {

        @Id
        @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "pok_seq")
        @SequenceGenerator(name = "pok_seq", initialValue = 1000, allocationSize = 1)

        private Long id;

        private String name;
        private int atack;
        private int defense;
        private int speed;
        private int attSpe;
        private int defSpe;
        private String imageUrl;


        @ManyToOne
        private Type type;

        @OneToOne
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

        public int getAtack() {
                return atack;
        }

        public void setAtack(int atack) {
                this.atack = atack;
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


        public String toString() {
                return "pokemon{" +
                        "id=" + id +
                        ", name='" + name + '\'' +
                        ", atack=" + atack +
                        ", defense=" + defense +
                        ", speed=" + speed +
                        ", attSpe=" + attSpe +
                        ", defSpe=" + defSpe +
                        ", imageUrl='" + imageUrl + '\'' +
                        '}';
        }
}
