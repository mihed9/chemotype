package chemotypeTemp

class PartPlantTemp {

    String partPlant

    static mapping = {
        table "part_plant_temp"
        version false
        partPlant column: "part_plant"
    }
    static constraints = {
        partPlant nullable: true
    }
}
