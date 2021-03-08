package chemoType

class Articles {

    String autors
    String title
    String journal
    String summary

    static mapping = {
        table "articles"
        autors column: "autors"
        title column: "title"
        journal column: "journal"
        summary column: "summary"
        version false
    }
    static constraints = {
        autors nullable: true
        title nullable: true
        journal nullable: true
        summary nullable: true
    }
}
