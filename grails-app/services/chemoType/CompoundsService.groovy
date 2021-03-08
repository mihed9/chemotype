package chemoType

import grails.transaction.Transactional

@Transactional
class CompoundsService {

    def countCompounds(){
        def result = Compounds?.executeQuery("select count (*) from Compounds")
        return result
    }
}
