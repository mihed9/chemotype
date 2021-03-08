package chemotypeTemp

class GenusSpeciesTemp {

    Long genus
    String species
    String characteristic
    String areal

    static mapping = {
        table "genus_species_temp"
        genus column: "genus"
        species column: "species"
        characteristic column: "characteristic"
        areal column: "areal"
        version false
    }
}
