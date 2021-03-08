package chemoType

import grails.transaction.Transactional

@Transactional
class SpecCompService {

    def countSpecComp() {
        def result = SpecComp?.executeQuery("select count(*) from SpecComp")
        return result
    }
}