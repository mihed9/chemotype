package chemoType

class PartPlant {

    String partPlant

    static mapping = {
        table "part_plant"
        version false
        partPlant column: "part_plant"
    }
    static constraints = {
        partPlant nullable: true
    }
}
