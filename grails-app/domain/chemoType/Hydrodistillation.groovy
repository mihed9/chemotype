package chemoType

class Hydrodistillation {

    String hdNo
    String type
    String massPlant
    String yield
    String note
    String time
    String after
    String waterVol
    String rate

    static mapping = {
        version false
        table "hydrodistillation"
        hdNo column: "hd_no"
        type column: "type"
        massPlant column: "mass_plant"
        yield column: "yield"
        note column: "note"
        time column: "time"
        after column: "after"
        waterVol column: "water_vol"
        rate column: "rate"
    }

    static constraints = {
        hdNo nullable: true
        type nullable: true
        massPlant nullable: true
        yield nullable: true
        note nullable: true
        time nullable: true
        after nullable: true
        waterVol nullable: true
        rate nullable: true
    }
}
