package chemotypeTemp

class SpecChemoTemp {

    Integer species
    String chemoType
    Integer country
    String region
    Integer articles
    Integer partPlant
    Integer hdNo
    Integer gcFid1
    Integer gcMs1
    String qualAn
    String quantAn
    Integer exNo
    Integer gcMs2
    Integer gcFid2
    Integer gcMs3
    Integer gcMs4

    static mapping = {
        table "spec_chemo_temp"
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
        gcMs4 column: "gc_ms4"
    }
}
