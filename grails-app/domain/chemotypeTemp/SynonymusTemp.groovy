package chemotypeTemp

class SynonymusTemp {

    Integer compoundSyn
    String synonyms

    static mapping = {
        table "synonyms_temp"
        compoundSyn column: "compound_syn"
        synonyms column: "synonym"
        version false
    }
    static constraints = {
        compoundSyn nullable: true
        synonyms nullable: true
    }
}
