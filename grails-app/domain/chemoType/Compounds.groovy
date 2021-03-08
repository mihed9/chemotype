package chemoType

import java.sql.Blob

class Compounds {

    String compound
    String iupac
    Blob formula
    String brutto
    String moll
    String composition
    String stateNote
    String state
    String tBoil
    String tFlash
    String density
    String pharmacology
    String definition
    String solubility
    String uses
    String tMelt
    String cas
    String fileName
    ClassName className

    static mapping = {
        table "compounds"
        compound column: "compound"
        iupac column: "iupac"
        formula column: "formula"
        brutto column: "brutto"
        moll column: "moll"
        composition column: "composition"
        stateNote column: "state_note"
        state column: "state"
        tBoil column: "t_boil"
        tFlash column: "t_flash"
        density column: "density"
        pharmacology column: "pharmacology"
        definition column: "definition"
        solubility column: "solubility"
        uses column: "uses"
        tMelt column: "t_melt"
        cas column: "cas"
        fileName column: "file_name"
        className column: "class_name"
        version false
    }

    static constraints = {
        compound nullable: true, blank: true
        iupac nullable: true, blank: true
        formula nullable: true, blank: true
        brutto nullable: true, blank: true
        moll nullable: true, blank: true
        composition nullable: true, blank: true
        stateNote nullable: true, blank: true
        state nullable: true, blank: true
        tBoil nullable: true, blank: true
        tFlash nullable: true, blank: true
        density nullable: true, blank: true
        pharmacology nullable: true, blank: true
        definition nullable: true, blank: true
        solubility nullable: true, blank: true
        uses nullable: true, blank: true
        tMelt nullable: true, blank: true
        cas nullable: true, blank: true
        fileName nullable: true, blank: true
        className nullable: true, blank: true
    }
}