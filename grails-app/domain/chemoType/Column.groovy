package chemoType

class Column {
    String column
    String phase
    String tempRange
    String type
    String similarPhase
    String link

    static mapping = {
        table "column_origin"
        version false
        column column: "column_name"
        phase column: "phase"
        tempRange column: "temp_range"
        type column: "type"
        similarPhase column: "similar_phase"
        link column: "link"
    }
    static constraints = {
        column nullable: true
        phase nullable: true
        tempRange nullable: true
        type nullable: true
        similarPhase nullable: true
        link nullable: true
    }
}
