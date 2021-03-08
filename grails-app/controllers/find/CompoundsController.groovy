package find

import chemoType.Compounds
import chemoType.SpecChemo
import chemoType.SpecComp
import chemoType.Synonyms
import grails.converters.JSON

class CompoundsController {

    def index() {
        render view: "/compounds/compoundSearch"
    }

    def getCasNumber(){
        def listCas = Compounds?.executeQuery("select compound, cas from Compounds where cas is not null order by cas")
        render listCas as JSON
    }

    def getName(){
        def listName = Compounds?.executeQuery("select compound from Compounds where compound is not null order by compound")
        render listName as JSON
    }

    def getIupac(){
        def listIupac = Compounds?.executeQuery("select compound, iupac from Compounds where iupac is not null order by iupac")
        render listIupac as JSON
    }

    def componentInfo() {
        def compound = Compounds?.findByCompound(params?.id as String)
        def synonims = Synonyms?.findAllByCompoundSyn(Compounds?.findByCompound(params?.id as String))
        def resultSynonimus = ""
        synonims?.each {
            resultSynonimus+= it?.synonyms + ", "
        }
        if(resultSynonimus?.size() > 0){
            resultSynonimus = resultSynonimus.substring(0, resultSynonimus?.length() - 2)
        }

        def speciesId = SpecComp?.executeQuery("select species.id, species.species from SpecComp where compound.id=:compId group by species", [compId: compound.id])
        def compoundTable = [];
        def i = 1
        speciesId?.each {
            def result = SpecComp?.executeQuery("select chemoType.chemoType, chemoType.country.name, minimum, maximum  from SpecComp where compound.id=:compoundId and species.id=:speciesId order by ((maximum + minimum)/2) desc", [compoundId: compound.id, speciesId: it[0]])
            compoundTable << [nameSpecies: it[1], chemotypes: result, size: result?.size() + 1, number: i]
            i++
        }

        render view: "/find/infoComponent", model: [compound: compound,
                                                    synonims: resultSynonimus,
                                                    table: compoundTable]
    }
}
