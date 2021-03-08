package chemotypeTemp

class FamilyGenusTemp {

    String family
    String genus

    static mapping = {
        table "family_genus_temp"
        family column: "family"
        genus column: "genus"
        version false
    }
}
