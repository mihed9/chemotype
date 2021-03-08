package chemoType

class GenusSpecies {

    FamilyGenus genus
    String species
    String characteristic
    String areal

    static constraints = {
        genus nullable: true
        species nullable: true
        characteristic nullable: true
        areal nullable: true
    }

    static mapping = {
        table "genus_species"
        genus column: "genus"
        species column: "species"
        characteristic column: "characteristic"
        areal column: "areal"
        version false
    }
}
