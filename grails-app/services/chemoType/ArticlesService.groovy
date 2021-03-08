package chemoType

import grails.transaction.Transactional

@Transactional
class ArticlesService {


    def countArticles(){
       def result = Articles?.executeQuery("select count(*) from Articles")
        return result
    }
}
