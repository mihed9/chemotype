package chemoType

class FamilyGenus {

    String family
    String genus

    static constraints = {
        family nullable: true
        genus nullable: true
    }

    static mapping = {
        table "family_genus"
        family column: "family"
        genus column: "genus"
        version false
    }
}