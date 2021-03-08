package find

import chemoType.Compounds
import chemoType.FamilyGenus
import chemoType.GenusSpecies
import chemoType.SpecComp
import grails.converters.JSON

class ExperimentController {

    def index() {
        render view: "/experiment/experiment"
    }

    def takeGenus() {
        def listGenus = FamilyGenus?.list([sort: "genus", order: "asc"])
        render listGenus as JSON
    }

    def takeSpecies() {
        def listSpecies = GenusSpecies?.list([sort: "species", order: "asc"])
        render listSpecies as JSON
    }

    def getCompounds(){
        def listName
        def family = params?.family as String
        def genus = params?.genus as Long
        def species = params?.species as Long

        if(species && species != 0){
            listName = SpecComp?.executeQuery("select compound.id, compound.compound from SpecComp where compound.compound is not null and species.id=:species group by compound",[species: species])
        } else if(genus && genus != 0){
            listName = SpecComp?.executeQuery("select compound.id, compound.compound from SpecComp where compound.compound is not null and species.genus.id=:genus group by compound",[genus: genus])
        } else if(family && family != "0"){
            listName = SpecComp?.executeQuery("select compound.id, compound.compound from SpecComp where compound.compound is not null and species.genus.family=:family group by compound",[family: family])
        } else {
            listName = Compounds?.executeQuery("select id, compound from Compounds where compound is not null")
        }
        render listName as JSON
    }

    def componentInfo() {
        def family = params?.chooseFamily as String
        def genus = params?.chooseGenus as Long
        def species = params?.chooseSpecies as Long
        def listPercentageKey = []
        def listPercentageValue = []

        params.each { key, value ->
            if (key.equals('percentageKey[]')) {
                if (Integer?.parseInt(params?.count) > 1) {
                    value.each {
                        listPercentageKey.add(it as Long)
                    }
                } else {
                    listPercentageKey.add(value as Long)
                }
            }

            if (key.equals('percentageValue[]')) {
                if (Integer?.parseInt(params?.count) > 1) {
                    value.each {
                        listPercentageValue.add(it as Integer)
                    }
                } else {
                    listPercentageValue.add(value as Integer)
                }
            }
        }

        def compoundTable = [];
        def i = 0
        def count = 1

        if(species && species != 0){
            listPercentageKey.each {
                def key = it as Long
                def value = listPercentageValue[i] as Long
                def minimum = value - 5 as Double
                def maximum = value + 5 as Double

                def speciesId = SpecComp?.executeQuery("select species.id, species.species from SpecComp where compound.id=:comp and minimum>:minimum and maximum<:maximum and species.id=:species group by species", [comp: key, minimum: minimum, maximum: maximum, species: species])

                speciesId?.each {
                    def result = SpecComp?.executeQuery("select chemoType.chemoType, chemoType.country.name, minimum, maximum, compound.compound  from SpecComp where compound.id=:compound and species.id=:speciesId and minimum>:minimum and maximum<:maximum order by ((maximum + minimum)/2) desc", [compound: key, speciesId: it[0], minimum: minimum, maximum: maximum])
                    compoundTable << [nameSpecies: it[1], chemotypes: result, size: result?.size() + 1, number: count]
                    count++
                }
                i++
            }
        } else if(genus && genus != 0){
            listPercentageKey.each {
                def key = it as Long
                def value = listPercentageValue[i] as Long
                def minimum = value - 5 as Double
                def maximum = value + 5 as Double

                def speciesId = SpecComp?.executeQuery("select species.id, species.species from SpecComp where compound.id=:comp and minimum>:minimum and maximum<:maximum and species.genus.genus=:genus group by species", [comp: key, minimum: minimum, maximum: maximum, genus: genus])

                speciesId?.each {
                    def result = SpecComp?.executeQuery("select chemoType.chemoType, chemoType.country.name, minimum, maximum, compound.compound  from SpecComp where compound.id=:compound and species.id=:speciesId and minimum>:minimum and maximum<:maximum order by ((maximum + minimum)/2) desc", [compound: key, speciesId: it[0], minimum: minimum, maximum: maximum])
                    compoundTable << [nameSpecies: it[1], chemotypes: result, size: result?.size() + 1, number: count]
                    count++
                }
                i++
            }
        } else if(family && family != "0"){
            listPercentageKey.each {
                def key = it as Long
                def value = listPercentageValue[i] as Long
                def minimum = value - 5 as Double
                def maximum = value + 5 as Double

                def speciesId = SpecComp?.executeQuery("select species.id, species.species from SpecComp where compound.id=:comp and minimum>:minimum and maximum<:maximum and species.genus.family=:family group by species", [comp: key, minimum: minimum, maximum: maximum, family: family])

                speciesId?.each {
                    def result = SpecComp?.executeQuery("select chemoType.chemoType, chemoType.country.name, minimum, maximum, compound.compound  from SpecComp where compound.id=:compound and species.id=:speciesId and minimum>:minimum and maximum<:maximum order by ((maximum + minimum)/2) desc", [compound: key, speciesId: it[0], minimum: minimum, maximum: maximum])
                    compoundTable << [nameSpecies: it[1], chemotypes: result, size: result?.size() + 1, number: count]
                    count++
                }
                i++
            }
        } else {
            listPercentageKey.each {
                def key = it as Long
                def value = listPercentageValue[i] as Long
                def minimum = value - 5 as Double
                def maximum = value + 5 as Double

                def speciesId = SpecComp?.executeQuery("select species.id, species.species from SpecComp where compound.id=:comp and minimum>:minimum and maximum<:maximum group by species", [comp: key, minimum: minimum, maximum: maximum])

                speciesId?.each {
                    def result = SpecComp?.executeQuery("select chemoType.chemoType, chemoType.country.name, minimum, maximum, compound.compound from SpecComp where compound.id=:compound and species.id=:speciesId and minimum>:minimum and maximum<:maximum order by ((maximum + minimum)/2) desc", [compound: key, speciesId: it[0], minimum: minimum, maximum: maximum])
                    compoundTable << [nameSpecies: it[1], chemotypes: result, size: result?.size() + 1, number: count]
                    count++
                }
                i++
            }
        }

        render compoundTable as JSON
    }
}
