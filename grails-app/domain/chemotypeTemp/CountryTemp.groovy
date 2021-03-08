package chemotypeTemp

class CountryTemp {
    String country
    String kod

    static mapping = {
        version false
        table "country_temp"
        kod column: "kod"
    }

    static constraints = {
        kod nullable: true, blank: true
    }
}
