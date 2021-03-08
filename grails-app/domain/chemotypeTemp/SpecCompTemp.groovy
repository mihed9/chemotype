package chemotypeTemp

class SpecCompTemp {

    Integer species
    Integer chemoType
    Integer compound
    Double minimum
    Double maximum
    String note

    static mapping = {
        table "spec_comp_temp"
        species column: "species"
        chemoType column: "chemoType"
        compound column: "compound"
        note column: "note"
        minimum column: "min"
        maximum column: "max"
        version false
    }
}
