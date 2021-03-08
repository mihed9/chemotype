package chemotypeTemp

import java.sql.Blob

class CompoundsTemp {
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
    Integer className

    static mapping = {
        table "compounds_temp"
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
        className column: "class_name_id"
        version false
    }
}
