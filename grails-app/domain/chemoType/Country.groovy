package chemoType

class Country {

    String name
    String kod

    static mapping = {
        version false
        table "countries"
        name column: "name"
        kod column: "kod"
    }

    static constraints = {
        name nullable: true, blank: true
        kod nullable: true, blank: true
    }
}
