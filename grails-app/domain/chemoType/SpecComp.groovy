package chemoType

class SpecComp {

    GenusSpecies species
    SpecChemo chemoType
    Compounds compound
    Double minimum
    Double maximum
    String note

    static mapping = {
        table "spec_comp"
        species column: "species"
        chemoType column: "chemoType"
        compound column: "compound"
        note column: "note"
        minimum column: "min"
        maximum column: "max"
        version false
    }

    static constraints = {
        species nullable: true
        chemoType nullable: true
        compound nullable: true
        note nullable: true
        minimum nullable: true
        maximum nullable: true
    }
}
