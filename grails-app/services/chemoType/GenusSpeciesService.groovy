package chemoType

import grails.transaction.Transactional

@Transactional
class GenusSpeciesService {

    def countGenusSpecies(){
        def result = GenusSpecies?.executeQuery("select count(*) from GenusSpecies")
        return result
    }
}
