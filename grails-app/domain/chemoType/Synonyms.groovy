package chemoType

class Synonyms {

    Compounds compoundSyn
    String synonyms

    static mapping = {
        table "synonyms"
        compoundSyn column: "compound_syn"
        synonyms column: "synonym"
        version false
    }
    static constraints = {
        compoundSyn nullable: true
        synonyms nullable: true
    }
}
