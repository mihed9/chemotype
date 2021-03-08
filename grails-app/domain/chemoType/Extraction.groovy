package chemoType

class Extraction {
    String extragent
    String time
    String note
    String exNo
    String massPlant
    String temp
    String afterEx
    String volEx

    static mapping = {
        version false
        table "extraction"
        extragent column: "extragent"
        time column: "time"
        note column: "note"
        exNo column: "ex_no"
        massPlant column: "mass_plant"
        temp column: "temp"
        afterEx column: "after_ex"
        volEx column: "vol_ex"
    }

    static constraints = {
        extragent nullable: true, blank: true
        time nullable: true, blank: true
        note nullable: true, blank: true
        exNo nullable: true, blank: true
        massPlant nullable: true, blank: true
        temp nullable: true, blank: true
        afterEx nullable: true, blank: true
        volEx nullable: true, blank: true
    }
}
