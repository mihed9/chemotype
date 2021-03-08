package converters

import chemoType.Articles
import chemoType.Column
import chemoType.Extraction
import chemoType.GasFidAnalysis
import chemoType.GasMasAnalysis
import chemoType.GcDevice
import chemoType.Hydrodistillation
import chemoType.Location
import chemoType.PartPlant
import chemotypeTemp.ArticlesTemp
import chemoType.ClassName
import chemotypeTemp.ClassNameTemp
import chemoType.Compounds
import chemotypeTemp.ColumnTemp
import chemotypeTemp.CompoundsTemp
import chemoType.Country
import chemoType.FamilyGenus
import chemoType.GenusSpecies
import chemoType.SpecChemo
import chemotypeTemp.CountryTemp
import chemotypeTemp.ExtractionTemp
import chemotypeTemp.GasFidAnalysisTemp
import chemotypeTemp.GasMasAnalysisTemp
import chemotypeTemp.GcDeviceTemp
import chemotypeTemp.HydrodistillationTemp
import chemotypeTemp.LocationTemp
import chemotypeTemp.PartPlantTemp
import chemotypeTemp.SpecChemoTemp
import chemoType.SpecComp
import chemotypeTemp.SpecCompTemp
import chemoType.Synonyms
import chemotypeTemp.SynonymusTemp
import chemotypeTemp.FamilyGenusTemp
import chemotypeTemp.GenusSpeciesTemp

class ConverterController {

    def index(){
        render view: '/converter/converter'
    }

    def updateAll(){
        System.out.print("Start update!!!!")
        try {
            updateArticles()
            updateClassName()
            updateColumnName()
            updateCompounds()
            updateCountry()
            updateExtraction()
            updateFamilyGenus()
            updateGcDevice()
            updateGenusSpecies()
            updateHydrodistillation()
            updatePartPlant()
            updateGasFidAnalysis()
            updateGasMasAnalysis()
            updateSpecChemo()
            updateLocation()
            updateSpecComp()
            updateSynonyms()
        } catch (Exception ex){
            System.out.print("Error:" + ex)
        }
        System.out.print("End update!!!!")
    }

    public void generateXmlMap(){
        String str = 'http://chemoType.info/variability/chemotypeInfo/'
        String str1 = 'http://chemoType.info/variability/componentInfo/'
        def file = new File('web-app/sitemap.txt')

        def listChemotypeId = SpecChemo?.executeQuery("SELECT id FROM SpecChemo")
        def listCompounds = SpecChemo?.executeQuery("SELECT compound FROM Compounds WHERE composition is not null")

        PrintWriter writer = new PrintWriter(file);
        writer.print("");
        writer.close();

        listChemotypeId?.each {
            if(it != null){
                file.withWriterAppend { w ->
                    w << str + it + '\n'
                }
            }
        }
        listCompounds?.each {
            if(it != null) {
                file.withWriterAppend { w ->
                    w << str1 + it + '\n'
                }
            }
        }
    }

    private void updateFamilyGenus(){
        System.out.print("Start updateFamilyGenus!!!!")
        def listFamilyGenusTemp = FamilyGenusTemp?.list()
        Integer differents = FamilyGenusTemp?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id - FamilyGenus?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id

        for(int i = 0; i < differents + 50; i++){
            def family = new FamilyGenus()
            family.family = null
            family.save(flush: true)
        }

        for(FamilyGenusTemp fm : listFamilyGenusTemp){
            FamilyGenus familyGenus = FamilyGenus?.findById(fm?.id as Long)

            if(familyGenus){
                familyGenus.genus = fm?.genus
                familyGenus.family = fm?.family
                familyGenus?.save(flush: true)
            }
        }
        System.out.print("End updateFamilyGenus!!!!")
    }

    private void updateGenusSpecies(){
        System.out.print("Start updateGenusSpecies!!!!")
        def listGenusSpeciesTemp = GenusSpeciesTemp?.list()
        Integer differents = GenusSpeciesTemp?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id - GenusSpecies?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id

        for(int i = 0; i < differents + 50; i++){
            def genusSp = new GenusSpecies()
            genusSp.species = null
            genusSp.save(flush: true)
        }

        for(GenusSpeciesTemp gs : listGenusSpeciesTemp){
            GenusSpecies genusSpecies = GenusSpecies?.findById(gs?.id as Long)

            if(genusSpecies){
                genusSpecies.genus = FamilyGenus.get(gs?.genus as Long)
                genusSpecies.species = gs?.species
                genusSpecies.characteristic = gs?.characteristic
                genusSpecies.areal = gs?.areal
                genusSpecies?.save(flush: true)
            }
        }

        System.out.print("End updateGenusSpecies!!!!")
    }

    private void updateArticles(){
        System.out.print("Start updateArticles!!!!")
        def listArticlesTemp = ArticlesTemp?.list()
        Integer differents = ArticlesTemp?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id - Articles?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id

        for(int i = 0; i < differents + 50; i++){
            def ar = new Articles()
            ar.autors = null
            ar.save(flush: true)
        }

        for(ArticlesTemp ar : listArticlesTemp){
            Articles articles = Articles?.findById(ar?.id as Long)

            if(articles){
                articles.autors = ar?.autors
                articles.title = ar?.title
                articles.journal = ar?.journal
                articles.summary = ar?.summary
                articles?.save(flush: true)
            }
        }
        System.out.print("End updateArticles!!!!")
    }

    private void updateSpecChemo(){
        System.out.print("Start updateSpecChemo!!!!")
        def listSpecChemoTemp = SpecChemoTemp?.list()
        Integer differents = SpecChemoTemp?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id - SpecChemo?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id

        for(int i = 0; i < differents + 50; i++){
            def sc = new SpecChemo()
            sc.save(flush: true)
        }

        for(SpecChemoTemp sc : listSpecChemoTemp){
            SpecChemo specChemo = SpecChemo?.findById(sc?.id as Long)

            if(specChemo){
                specChemo.species = GenusSpecies?.get(sc.species as Long)
                specChemo.chemoType = sc?.chemoType
                specChemo.country = Country?.get(sc.country as Long)
                specChemo.region = sc?.region
                specChemo.articles = Articles?.get(sc?.articles)
                specChemo.partPlant = PartPlant?.get(sc?.partPlant)
                specChemo.hdNo = Hydrodistillation?.get(sc?.hdNo)
                specChemo.gcFid1 = GasFidAnalysis?.get(sc.gcFid1 as Long)
                specChemo.gcMs1 = GasMasAnalysis?.get(sc.gcMs1 as Long)
                specChemo.qualAn = sc?.qualAn
                specChemo.quantAn = sc?.quantAn
                specChemo.exNo = Extraction?.get(sc.exNo as Long)
                specChemo.gcMs2 = GasMasAnalysis?.get(sc.gcMs2 as Long)
                specChemo.gcFid2 = GasFidAnalysis?.get(sc.gcFid2 as Long)
                specChemo.gcMs3 = GasMasAnalysis?.get(sc.gcMs3 as Long)
                specChemo.gcMs4 = GasMasAnalysis?.get(sc.gcMs4 as Long)
                specChemo?.save(flush: true)
            }
        }
        System.out.print("End updateSpecChemo!!!!")
    }

    private void updateSpecComp(){
        System.out.print("Start updateSpecComp!!!!")
        def listSpecComp = SpecCompTemp?.list()
        Integer differents = SpecCompTemp?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id - SpecComp?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id

        for(int i = 0; i < differents + 2000; i++){
            def sc = new SpecComp()
            sc.chemoType = null
            sc.save(flush: true)
        }

        for(SpecCompTemp sc : listSpecComp){
            SpecComp specComp = SpecComp?.findById(sc?.id as Long)

            if(specComp){
                specComp?.species = GenusSpecies?.get(sc?.species as Long)
                specComp?.chemoType = SpecChemo?.get(sc?.chemoType as Long)
                specComp?.compound = Compounds?.get(sc?.compound)
                specComp?.minimum = sc?.minimum
                specComp?.maximum = sc?.maximum
                specComp?.note = sc?.note
                specComp?.save(flush: true)
            }
        }
        System.out.print("End updateSpecComp!!!!")
    }

    private void updateCompounds(){
        System.out.print("Start updateCompounds!!!!")
        def compoundTemp = CompoundsTemp?.list()
        Integer differents = CompoundsTemp?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id - Compounds?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id

        for(int i = 0; i < differents; i++){
            def c = new Compounds()
            c.formula = null
            c.save(flush: true)
        }

        for(CompoundsTemp sc : compoundTemp){
            Compounds compounds = Compounds?.findById(sc?.id as Long)

            if(compounds){
                compounds?.compound = sc?.compound
                compounds?.iupac = sc?.iupac
                compounds?.brutto = sc?.brutto
                compounds?.moll = sc?.moll
                compounds?.composition = sc?.composition
                compounds?.stateNote = sc?.stateNote
                compounds?.state = sc?.state
                compounds?.tBoil = sc?.tBoil
                compounds?.tFlash = sc?.tFlash
                compounds?.density = sc?.density
                compounds?.pharmacology = sc?.pharmacology
                compounds?.definition = sc?.definition
                compounds?.solubility = sc?.solubility
                compounds?.uses = sc?.uses
                compounds?.tMelt = sc?.tMelt
                compounds?.cas = sc?.cas
                compounds?.fileName = sc?.fileName
                compounds?.className = ClassName?.get(sc?.className as Long)
                compounds?.save(flush: true)
            }
        }
        System.out.print("End updateCompounds!!!!")
    }

    private void updateClassName(){
        System.out.print("Start updateClassName!!!!")
        def classTemp = ClassNameTemp?.list()
        Integer differents = ClassNameTemp?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id - ClassName?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id

        for(int i = 0; i < differents; i++){
            def s = new ClassName()
            s.save(flush: true)
        }

        for(ClassNameTemp c : classTemp){
            def classN = ClassName?.findById(c?.id as Long)

            if(classN){
                classN?.className = c?.className
                classN?.save(flush: true)
            }
        }
        System.out.print("End updateClassName!!!!")
    }

    private void updateColumnName(){
        System.out.print("Start updateColumnName!!!!")
        def columnTemp = ColumnTemp?.list()
        Integer differents = ColumnTemp?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id - Column?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id

        for(int i = 0; i < differents; i++){
            def s = new Column()
            s.save(flush: true)
        }

        for(ColumnTemp c : columnTemp){
            def column = Column?.findById(c?.id as Long)

            if(column){
                column?.column = c?.column
                column?.phase = c?.phase
                column?.tempRange = c?.tempRange
                column?.type = c?.type
                column?.similarPhase = c?.similarPhase
                column?.link = c?.link
                column?.save(flush: true)
            }
        }
        System.out.print("End updateColumnName!!!!")
    }

    private void updateCountry(){
        System.out.print("Start updateCountry!!!!")
        def countryTemp = CountryTemp?.list()
        Integer differents = CountryTemp?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id - Country?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id

        for(int i = 0; i < differents; i++){
            def s = new Country()
            s.save(flush: true)
        }

        for(CountryTemp c : countryTemp){
            def country = Country?.findById(c?.id as Long)

            if(country){
                country?.kod = c?.kod
                country?.name = c?.country
                country?.save(flush: true)
            }
        }
        System.out.print("End updateCountry!!!!")
    }

    private void updateExtraction(){
        System.out.print("Start updateExtraction!!!!")
        def extractionTemp = ExtractionTemp?.list()
        Integer differents = ExtractionTemp?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id - Extraction?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id

        for(int i = 0; i < differents; i++){
            def s = new Extraction()
            s.save(flush: true)
        }

        for(ExtractionTemp c : extractionTemp){
            def extraction = Extraction?.findById(c?.id as Long)

            if(extraction){
                extraction?.extragent = c?.extragent
                extraction?.time = c?.time
                extraction?.note = c?.note
                extraction?.exNo = c?.exNo
                extraction?.massPlant = c?.massPlant
                extraction?.temp = c?.temp
                extraction?.afterEx = c?.afterEx
                extraction?.volEx = c?.volEx
                extraction?.save(flush: true)
            }
        }
        System.out.print("End updateExtraction!!!!")
    }

    private void updateGasFidAnalysis(){
        System.out.print("Start updateGasFidAnalysis!!!!")
        def gasFidAnalysisTemp = GasFidAnalysisTemp?.list()
        Integer differents = GasFidAnalysisTemp?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id - GasFidAnalysis?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id

        for(int i = 0; i < differents; i++){
            def s = new GasFidAnalysis()
            s.save(flush: true)
        }

        for(GasFidAnalysisTemp c : gasFidAnalysisTemp){
            def gasFidAnalysis = GasFidAnalysis?.findById(c?.id as Long)

            if(gasFidAnalysis){
                gasFidAnalysis?.detector = c?.detector
                gasFidAnalysis?.gfAnalysis = c?.gfAnalysis
                gasFidAnalysis?.columnParameters = c?.columnParameters
                gasFidAnalysis?.thicknessPhase = c?.thicknessPhase
                gasFidAnalysis?.gas = c?.gas
                gasFidAnalysis?.injTemp = c?.injTemp
                gasFidAnalysis?.detTemp = c?.detTemp
                gasFidAnalysis?.tempProgram = c?.tempProgram
                gasFidAnalysis?.integrator = c?.integrator
                gasFidAnalysis?.vol = c?.vol
                gasFidAnalysis?.anProc = c?.anProc
                gasFidAnalysis?.split = c?.split
                gasFidAnalysis?.pressure = c?.pressure
                gasFidAnalysis?.columnId = Column?.get(c?.column)
                gasFidAnalysis?.gcDevice = GcDevice.get(c?.gcDevice)
                gasFidAnalysis?.save(flush: true)
            }
        }
        System.out.print("End updateGasFidAnalysis!!!!")
    }

    private void updateGasMasAnalysis(){
        System.out.print("Start updateGasMasAnalysis!!!!")
        def gasMasAnalysisTemp = GasMasAnalysisTemp?.list()
        Integer differents = GasMasAnalysisTemp?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id - GasMasAnalysis?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id

        for(int i = 0; i < differents; i++){
            def s = new GasMasAnalysis()
            s.save(flush: true)
        }

        for(GasMasAnalysisTemp c : gasMasAnalysisTemp){
            def gasMasAnalysis = GasMasAnalysis?.findById(c?.id as Long)

            if(gasMasAnalysis){
                gasMasAnalysis?.detector = c?.detector
                gasMasAnalysis?.detSer = c?.detSer
                gasMasAnalysis?.gmNo = c?.gmNo
                gasMasAnalysis?.columnParameters = c?.columnParameters
                gasMasAnalysis?.thicknessPhase = c?.thicknessPhase
                gasMasAnalysis?.gas = c?.gas
                gasMasAnalysis?.gasVelocity = c?.gasVelocity
                gasMasAnalysis?.injTemp = c?.injTemp
                gasMasAnalysis?.detTemp = c?.detTemp
                gasMasAnalysis?.tempProgram = c?.tempProgram
                gasMasAnalysis?.ionVolt = c?.ionVolt
                gasMasAnalysis?.ionSourceTemp = c?.ionSourceTemp
                gasMasAnalysis?.scanMass = c?.scanMass
                gasMasAnalysis?.transfLine = c?.transfLine
                gasMasAnalysis?.splitRatio = c?.splitRatio
                gasMasAnalysis?.vol = c?.vol
                gasMasAnalysis?.elMult = c?.elMult
                gasMasAnalysis?.gasPres = c?.gasPres
                gasMasAnalysis?.time = c?.time
                gasMasAnalysis?.scanS = c?.scanS
                gasMasAnalysis?.ionizationCurrent = c?.ionizationCurrent
                gasMasAnalysis?.process = c?.process
                gasMasAnalysis?.interfaceTemp = c?.interfaceTemp
                gasMasAnalysis?.quadrupTemp = c?.quadrupTemp
                gasMasAnalysis?.columnId = Column?.get(c?.column)
                gasMasAnalysis?.gcDevice = GcDevice.get(c?.gcDevice)
                gasMasAnalysis?.save(flush: true)
            }
        }
        System.out.print("End updateGasMasAnalysis!!!!")
    }

    private void updateGcDevice(){
        System.out.print("Start updateGcDevice!!!!")
        def gcDeviceTemp = GcDeviceTemp?.list()
        Integer differents = GcDeviceTemp?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id - GcDevice?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id

        for(int i = 0; i < differents; i++){
            def s = new GcDevice()
            s.save(flush: true)
        }

        for(GcDeviceTemp c : gcDeviceTemp){
            def gcDevice = GcDevice?.findById(c?.id as Long)

            if(gcDevice){
                gcDevice?.gcDevice = c?.gcDevice
                gcDevice?.manufactor = c?.manufactor
                gcDevice?.save(flush: true)
            }
        }
        System.out.print("End updateGcDevice!!!!")
    }

    private void updateHydrodistillation(){
        System.out.print("Start updateHydrodistillation!!!!")
        def hydrodistillationTemp = HydrodistillationTemp?.list()
        Integer differents = HydrodistillationTemp?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id - Hydrodistillation?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id

        for(int i = 0; i < differents; i++){
            def s = new Hydrodistillation()
            s.save(flush: true)
        }

        for(HydrodistillationTemp c : hydrodistillationTemp){
            def hydrodistillation = Hydrodistillation?.findById(c?.id as Long)

            if(hydrodistillation){
                hydrodistillation?.hdNo = c?.hdNo
                hydrodistillation?.type = c?.type
                hydrodistillation?.massPlant = c?.massPlant
                hydrodistillation?.yield = c?.yield
                hydrodistillation?.note = c?.note
                hydrodistillation?.time = c?.time
                hydrodistillation?.after = c?.after
                hydrodistillation?.waterVol = c?.waterVol
                hydrodistillation?.rate = c?.rate
                hydrodistillation?.save(flush: true)
            }
        }
        System.out.print("End updateHydrodistillation!!!!")
    }

    private void updateLocation(){
        System.out.print("Start updateLocation!!!!")
        def locationTemp = LocationTemp?.list()
        Integer differents = LocationTemp?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id - Location?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id

        for(int i = 0; i < differents; i++){
            def s = new Location()
            s.save(flush: true)
        }

        for(LocationTemp c : locationTemp){
            def location = Location?.findById(c?.id as Long)

            if(location){
                location?.species = GenusSpecies?.get(c?.species)
                location?.chemoType = SpecChemo?.get(c?.chemoType)
                location?.latitude = c?.latitude
                location?.longitude = c?.longitude
                location?.regNote = c?.regNote
                location?.country = Country?.get(c?.country)
                location?.periodOfProcurement = c?.periodOfProcurement
                location?.save(flush: true)
            }
        }
        System.out.print("End updateLocation!!!!")
    }

    private void updatePartPlant(){
        System.out.print("Start updatePartPlant!!!!")
        def partPlantTemp = PartPlantTemp?.list()
        Integer differents = PartPlantTemp?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id - PartPlant?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id

        for(int i = 0; i < differents; i++){
            def s = new PartPlant()
            s.save(flush: true)
        }

        for(PartPlantTemp c : partPlantTemp){
            def partPlant = PartPlant?.findById(c?.id as Long)

            if(partPlant){
                partPlant?.partPlant = c?.partPlant
                partPlant?.save(flush: true)
            }
        }
        System.out.print("End updatePartPlant!!!!")
    }

    private void updateSynonyms(){
        System.out.print("Start updateSynonyms!!!!")
        def synonymusTemp = SynonymusTemp?.list()
        Integer differents = SynonymusTemp?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id - Synonyms?.list([max:1,sort:"id",order:"desc"])?.get(0)?.id

        for(int i = 0; i < differents; i++){
            def s = new Synonyms()
            s.save(flush: true)
        }

        for(SynonymusTemp c : synonymusTemp){
            def synonyms = Synonyms?.findById(c?.id as Long)

            if(synonyms){
                synonyms?.compoundSyn = Compounds?.get(c?.compoundSyn)
                synonyms?.synonyms = c?.synonyms
                synonyms?.save(flush: true)
            }
        }
        System.out.print("End updateSynonyms!!!!")
    }

    def cleanDatabase(){
        System.out.print("Start clean all!!!!")
        def familyGenus = FamilyGenus?.executeQuery("select id from FamilyGenus")
        familyGenus?.each {
            Long idSpecChem = it as Long
            FamilyGenusTemp sc = FamilyGenusTemp?.findById(idSpecChem)
            if(!sc){
                def f = FamilyGenus?.get(idSpecChem)
                if(f){
                    try {
                        f.delete(flush: true)
                        System.out.print("Remove FamilyGenus: " + idSpecChem)
                    } catch (e) {
                        print(e + "FamilyGenus id = " + idSpecChem)
                    }
                }
            }
        }

        def genusSpec = GenusSpecies?.executeQuery("select id from GenusSpecies")
        genusSpec?.each {
            Long idGenusSpec = it as Long
            GenusSpeciesTemp sc = GenusSpeciesTemp?.findById(idGenusSpec)
            if(!sc){
                def c = GenusSpecies?.get(idGenusSpec)
                if(c){
                    try {
                        c.delete(flush: true)
                        System.out.print("Remove GenusSpecies: " + idGenusSpec)
                    } catch (e) {
                        print(e + "SpecChemo id = " + idGenusSpec)
                    }
                }
            }
        }

        def articles = Articles?.executeQuery("select id from Articles")
        articles?.each {
            Long idArticles = it as Long
            ArticlesTemp sc = ArticlesTemp?.findById(idArticles)
            if(!sc){
                def c = Articles?.get(idArticles)
                if(c){
                    try {
                        c.delete(flush: true)
                        System.out.print("Remove Articles: " + idArticles)
                    } catch (e) {
                        print(e + "SpecChemo id = " + idArticles)
                    }
                }
            }
        }

        def specChem = SpecChemo?.executeQuery("select id from SpecChemo")
        specChem?.each {
            Long idSpecChem = it as Long
            SpecChemoTemp sc = SpecChemoTemp?.findById(idSpecChem)
            if(!sc){
                def c = SpecChemo?.get(idSpecChem)
                if(c){
                    try {
                        c.delete(flush: true)
                        System.out.print("Remove SpecChemo: " + idSpecChem)
                    } catch (e) {
                        print(e + "SpecChemo id = " + idSpecChem)
                    }
                }
            }
        }

        def specComp = SpecComp?.executeQuery("select id from SpecComp")
        specComp?.each {
            Long idSpecComp = it as Long
            SpecCompTemp sc = SpecCompTemp?.findById(idSpecComp)
            if(!sc){
                def s = SpecComp?.get(idSpecComp)
                if(s) {
                    try {
                        s.delete(flush: true)
                        System.out.print("Remove SpecComp: " + idSpecComp)
                    } catch (e) {
                        print(e + "Spec Comp id = " + idSpecComp)
                    }
                }
            }
        }

        def synonimus = Synonyms?.executeQuery("select id from Synonyms")
        synonimus?.each {
            Long idSynonimus = it as Long
            SynonymusTemp sy = SynonymusTemp?.findById(idSynonimus)
            if(!sy){
                def s = Synonyms?.get(idSynonimus)
                if(s) {
                    try {
                        s.delete(flush: true)
                        System.out.print("Remove Synonyms: " + idSynonimus)
                    } catch (e) {
                        print(e + "Synonymus id = " + idSynonimus)
                    }
                }
            }
        }

        def className = ClassName?.executeQuery("select id from ClassName")
        className?.each {
            Long idClassName = it as Long
            ClassNameTemp classN = ClassNameTemp?.findById(idClassName)
            if(!classN){
                def s = Synonyms?.get(idClassName)
                if(s) {
                    try {
                        s.delete(flush: true)
                        System.out.print("Remove ClassName: " + idClassName)
                    } catch (e) {
                        print(e + "ClassName id = " + idClassName)
                    }
                }
            }
        }

        def compounds = Compounds?.executeQuery("select id from Compounds")
        compounds?.each {
            Long idCompound = it as Long
            CompoundsTemp co = CompoundsTemp?.findById(idCompound)
            if(!co){
                def c = Compounds?.get(idCompound)
                if(c) {
                    try {
                        c.delete(flush: true)
                        System.out.print("Remove Compounds: " + idCompound)
                    } catch (e) {
                        print(e + "Compound id = " + idCompound)
                    }
                }
            }
        }

        def columnName = Column?.executeQuery("select id from Column")
        columnName?.each {
            Long idColumn = it as Long
            ColumnTemp co = ColumnTemp?.findById(idColumn)
            if(!co){
                def c = Column?.get(idColumn)
                if(c) {
                    try {
                        c.delete(flush: true)
                        System.out.print("Remove Column: " + idColumn)
                    } catch (e) {
                        print(e + "Column id = " + idColumn)
                    }
                }
            }
        }

        def country = Country?.executeQuery("select id from Country")
        country?.each {
            Long idCountry = it as Long
            CountryTemp co = CountryTemp?.findById(idCountry)
            if(!co){
                def c = Country?.get(idCountry)
                if(c) {
                    try {
                        c.delete(flush: true)
                        System.out.print("Remove Country: " + idCountry)
                    } catch (e) {
                        print(e + "Country id = " + idCountry)
                    }
                }
            }
        }

        def extraction = Extraction?.executeQuery("select id from Extraction")
        extraction?.each {
            Long idExtraction = it as Long
            ExtractionTemp co = ExtractionTemp?.findById(idExtraction)
            if(!co){
                def c = Extraction?.get(idExtraction)
                if(c) {
                    try {
                        c.delete(flush: true)
                        System.out.print("Remove Extraction: " + idExtraction)
                    } catch (e) {
                        print(e + "Extraction id = " + idExtraction)
                    }
                }
            }
        }

        def gcDevice = GcDevice?.executeQuery("select id from GcDevice")
        gcDevice?.each {
            Long idGcDevice = it as Long
            GcDeviceTemp co = GcDeviceTemp?.findById(idGcDevice)
            if(!co){
                def c = GcDevice?.get(idGcDevice)
                if(c) {
                    try {
                        c.delete(flush: true)
                        System.out.print("Remove GcDevice: " + idGcDevice)
                    } catch (e) {
                        print(e + "GcDevice id = " + idGcDevice)
                    }
                }
            }
        }

        def hydrodistillation = Hydrodistillation?.executeQuery("select id from Hydrodistillation")
        hydrodistillation?.each {
            Long idHydrodistillation = it as Long
            HydrodistillationTemp co = HydrodistillationTemp?.findById(idHydrodistillation)
            if(!co){
                def c = Hydrodistillation?.get(idHydrodistillation)
                if(c) {
                    try {
                        c.delete(flush: true)
                        System.out.print("Remove Hydrodistillation: " + idHydrodistillation)
                    } catch (e) {
                        print(e + "Hydrodistillation id = " + idHydrodistillation)
                    }
                }
            }
        }

        def partPlant = PartPlant?.executeQuery("select id from PartPlant")
        partPlant?.each {
            Long idPartPlant = it as Long
            PartPlantTemp co = PartPlantTemp?.findById(idPartPlant)
            if(!co){
                def c = PartPlant?.get(idPartPlant)
                if(c) {
                    try {
                        c.delete(flush: true)
                        System.out.print("Remove PartPlant: " + idPartPlant)
                    } catch (e) {
                        print(e + "PartPlant id = " + idPartPlant)
                    }
                }
            }
        }

        def gasFidAnalysis = GasFidAnalysis?.executeQuery("select id from GasFidAnalysis")
        gasFidAnalysis?.each {
            Long idGasFidAnalysis = it as Long
            GasFidAnalysisTemp co = GasFidAnalysisTemp?.findById(idGasFidAnalysis)
            if(!co){
                def c = GasFidAnalysis?.get(idGasFidAnalysis)
                if(c) {
                    try {
                        c.delete(flush: true)
                        System.out.print("Remove GasFidAnalysis: " + idGasFidAnalysis)
                    } catch (e) {
                        print(e + "GasFidAnalysis id = " + idGasFidAnalysis)
                    }
                }
            }
        }

        def gasMasAnalysis = GasMasAnalysis?.executeQuery("select id from GasMasAnalysis")
        gasMasAnalysis?.each {
            Long idGasMasAnalysis = it as Long
            GasMasAnalysisTemp co = GasMasAnalysisTemp?.findById(idGasMasAnalysis)
            if(!co){
                def c = GasMasAnalysis?.get(idGasMasAnalysis)
                if(c) {
                    try {
                        c.delete(flush: true)
                        System.out.print("Remove GasMasAnalysis: " + idGasMasAnalysis)
                    } catch (e) {
                        print(e + "GasMasAnalysis id = " + idGasMasAnalysis)
                    }
                }
            }
        }

        def location = Location?.executeQuery("select id from Location")
        location?.each {
            Long idLocation = it as Long
            LocationTemp co = LocationTemp?.findById(idLocation)
            if(!co){
                def c = Location?.get(idLocation)
                if(c) {
                    try {
                        c.delete(flush: true)
                        System.out.print("Remove Location: " + idLocation)
                    } catch (e) {
                        print(e + "Location id = " + idLocation)
                    }
                }
            }
        }
        System.out.print("End clean all!!!!")
        System.out.print("Start generate sitemap!!!!")
        generateXmlMap()
        System.out.print("End generate sitemap!!!!")
    }
}
