package chemotypeTemp

class ClassNameTemp {

    String className

    static mapping = {
        table "class_name_temp"
        className column: "class_name"
        version false
    }
    static constraints = {
        className nullable: true
    }
}