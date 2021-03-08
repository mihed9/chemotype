package chemoType

class SpecChemo {

    GenusSpecies species
    String chemoType
    Country country
    String region
    Articles articles
    PartPlant partPlant
    Hydrodistillation hdNo
    GasFidAnalysis gcFid1
    GasFidAnalysis gcFid2
    GasMasAnalysis gcMs1
    GasMasAnalysis gcMs2
    GasMasAnalysis gcMs3
    GasMasAnalysis gcMs4
    String qualAn
    String quantAn
    Extraction exNo

    static mapping = {
        table "spec_chemo"
        species column: "species"
        chemoType column: "chemoType"
        region column: "region"
        partPlant column: "part_plant"
        articles column: "articles"
        country column: "country"
        hdNo column: "hd_no"
        gcFid1 column: "gc_fid1"
        gcMs1 column: "gc_ms1"
        qualAn column: "qual_an"
        quantAn column: "quant_an"
        exNo column: "ex_no"
        gcMs2 column: "gc_ms2"
        gcFid2 column: "gc_fid2"
        gcMs3 column: "gc_ms3"
        gcMs4 column: "gc_ms4"
        version false
    }

    static constraints = {
        species nullable: true
        chemoType nullable: true
        region nullable: true
        partPlant nullable: true
        articles nullable: true
        country nullable: true
        hdNo nullable: true
        gcFid1 nullable: true
        gcMs1 nullable: true
        qualAn nullable: true
        quantAn nullable: true
        exNo nullable: true
        gcMs2 nullable: true
        gcFid2 nullable: true
        gcMs3 nullable: true
        gcMs4 nullable: true
    }
}
