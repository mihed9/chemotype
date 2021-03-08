package chemotypeTemp

class ArticlesTemp {

    String autors
    String title
    String journal
    String summary

    static mapping = {
        table "articles_temp"
        autors column: "autors"
        title column: "title"
        journal column: "journal"
        summary column: "summary"
        version false
    }
}
