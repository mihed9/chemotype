package chemoType

class ClassName {

    String className

    static mapping = {
        table "class_name"
        className column: "class_name"
        version false
    }
    static constraints = {
        className nullable: true
    }
}
