package find

import chemoType.ArticlesService
import chemoType.Compounds
import chemoType.Country
import chemoType.FamilyGenus
import chemoType.GenusSpecies
import chemoType.GenusSpeciesService
import chemoType.SpecChemo
import chemoType.SpecChemoService
import chemoType.CompoundsService
import chemoType.SpecComp
import chemoType.SpecCompService
import chemoType.Synonyms
import grails.converters.JSON
import org.springframework.beans.factory.annotation.Autowired

class VariabilityController {

    @Autowired
    SpecChemoService specChemoService
    @Autowired
    CompoundsService compoundsService
    @Autowired
    ArticlesService articlesService
    @Autowired
    GenusSpeciesService genusSpeciesService
    @Autowired
    SpecCompService specCompService

    def index() {
        def listCountry = Country?.list()
        render view: "/find/searchByTheCountry", model: [listCountry: listCountry]
    }

    def takeFamily() {
        def listFamily = FamilyGenus?.executeQuery("select family from FamilyGenus group by family order by family")
        render listFamily as JSON
    }

    def takeGenus() {
        def listGenus = FamilyGenus?.findAllByFamily(params?.family as String, [order: "desc"])
        render listGenus as JSON
    }

    def takeSpecies() {
        def genus = FamilyGenus?.get(params?.idGenus as Long)
        def listSpecies = GenusSpecies?.findAllWhere(genus: genus, [sort: "species", order: "desc"])
        render listSpecies as JSON
    }

    def takeCountry() {
        def species = GenusSpecies?.get(params?.idSpecies as Long)
        def listCountry = SpecChemo?.executeQuery("select country.id from SpecChemo where species=:species group by country order by country.name", [species: species])

        render listCountry as JSON
    }

    def takeResult() {
        def result = []
        def listCountries = []
        params.each { key, value ->
            if (key.equals('listCountry[]')) {
                if (Integer?.parseInt(params?.count) > 1) {
                    value.each {
                        listCountries.add(it as Long)
                    }
                } else {
                    listCountries.add(value as Long)
                }
            }
        }
        def idSpecies = params?.idSpecies as Long
        def listChemotype = SpecChemo?.executeQuery("select id from SpecChemo where species.id=:idSpecies and country.id in (:listCountries)", [idSpecies: idSpecies, listCountries: listCountries])

        listChemotype?.each {
            def specChemo = SpecChemo?.get(it as Long)
            def species = GenusSpecies?.get(specChemo?.species?.id as Long)
            def specComp = SpecComp?.executeQuery("select id, compound.compound, minimum, maximum, compound.fileName, note from SpecComp where species.id=:species and chemoType.id=:specChemo order by ((maximum + minimum)/2) desc", [species: species.id, specChemo: specChemo.id])

            result << [id: specChemo?.id, name: specChemo?.chemoType, country: specChemo?.country?.name, region: specChemo?.region, compounds: specComp]
        }
        render result as JSON
    }

    def chemotypeInfo() {
        def chemotypeId = SpecChemo?.get(params?.id as Long)
        def chemoType = specChemoService?.getChemotypeById(chemotypeId.id)
        def componentPercentage = specChemoService?.getSpecCompByChemotypeAndSpeciesId(chemotypeId)
        render view: "/find/infoChemotype", model: [chemoType: chemoType, componentPercentage: componentPercentage]
    }

    def componentInfo() {
        def compound = Compounds?.findByCompound(params?.id as String)
        def synonims = Synonyms?.findByCompoundSyn(Compounds?.findByCompound(params?.id as String))
        def resultSynonimus = ""
        synonims?.each {
            resultSynonimus+= it?.synonyms + ", "
        }
        if(resultSynonimus?.size() > 0){
            resultSynonimus = resultSynonimus.substring(0, resultSynonimus?.length() - 2)
        }
        render view: "/find/infoComponent", model: [compound: compound,
                                                    synonims: resultSynonimus]
    }

    def countStatistics() {
        def artic = articlesService?.countArticles()
        def genus = genusSpeciesService?.countGenusSpecies()
        def comp = compoundsService?.countCompounds()
        def spec = specChemoService?.countSpecChemo()
        def specComp = specCompService?.countSpecComp()

        def statistics = [artic: artic, genus: genus, comp: comp, spec: spec, specComp: specComp]
        render statistics as JSON
    }

    def compareChemotype() {
        def listChemotype = []
        def result = []
        params.each { key, value ->
            if (key.equals('listChemotype[]')) {
                if (Integer?.parseInt(params?.count) > 1) {
                    value.each {
                        listChemotype.add(it as Long)
                    }
                } else {
                    listChemotype.add(value as Long)
                }
            }
        }
        listChemotype?.each {
            def specChemo = SpecChemo?.get(it as Long)
            def species = GenusSpecies?.get(specChemo?.species?.id as Long)
            def specComp = SpecComp?.executeQuery("select compound.id, compound.compound, minimum, maximum, note from SpecComp where species=:species and chemoType=:specChemo order by ((maximum + minimum)/2) desc", [species: species, specChemo: specChemo])

            result << [id: specChemo?.id, name: specChemo?.chemoType, country: specChemo?.country?.name, region: specChemo?.region, compounds: specComp]
        }
        render result as JSON
    }
}