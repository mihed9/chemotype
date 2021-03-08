package chemotypeTemp

class LocationTemp {

    Integer species
    Integer chemoType
    String latitude
    String longitude
    String regNote
    Integer country
    String periodOfProcurement

    static constraints = {
        species nullable: true
        chemoType nullable: true
        latitude nullable: true
        longitude nullable: true
        regNote nullable: true
        country nullable: true
        periodOfProcurement nullable: true
    }

    static mapping = {
        table "location_temp"
        version false
        species column: "species_id"
        chemoType column: "chemotype_id"
        latitude column: "latitude"
        longitude column: "longitude"
        regNote column: "reg_note"
        country column: "country"
        periodOfProcurement column: "period_of_procurement"
    }
}
