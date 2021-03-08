package find

class NavigationController {

    def about() {
        render view: "/navigation/about"
    }

    def faq(){
        render view: "/navigation/faq"
    }

    def contact(){
        render view: "/navigation/contact"
    }

    def partnership(){
        render view: "/navigation/partnership"
    }
}
