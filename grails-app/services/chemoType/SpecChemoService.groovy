package chemoType

import grails.transaction.Transactional

@Transactional
class SpecChemoService {

    def countSpecChemo(){
        def result = SpecChemo?.executeQuery("select count(*) from SpecChemo")
        return result
    }

    public def getChemotypeById(def id) {
        def result = SpecChemo?.findById(id)
        def chemoType = [chemotypeId: result?.id, species: result?.species?.species, nameChemotype: result?.chemoType,  country: result?.country?.name, region: result?.region, partPlan: result?.partPlant?.partPlant,
                         autors: result?.articles?.autors, title: result?.articles?.title, journal: result?.articles?.journal, summary: result?.articles?.summary, hydroditillationNo: result?.hdNo?.hdNo, hydroditillationType: result?.hdNo?.type,
                         hydroditillationMassPlant: result?.hdNo?.massPlant, hydroditillationVolumeOfWater: result?.hdNo?.waterVol, hydroditillationTime: result?.hdNo?.time, hydroditillationRate: result?.hdNo?.rate,
                         hydroditillationYield: result?.hdNo?.yield, hydroditillationNote: result?.hdNo?.note, hydroditillationAfter: result?.hdNo?.after, extractionType: result?.exNo?.note, extractionNo: result?.exNo?.exNo,
                         extractionMassPlant: result?.exNo?.massPlant, extractionVolumeOfExtragent: result?.exNo?.volEx, extractionExtragent: result?.exNo?.extragent, extractionTime: result?.exNo?.time,
                         extractionAfter: result?.exNo?.afterEx, qualAn: result?.qualAn, quanAn: result?.quantAn, gcFid1Device: result?.gcFid1?.gcDevice?.gcDevice, gcFid1Integrator: result?.gcFid1?.integrator, gcFid1AnProc: result?.gcFid1?.anProc,
                         gcFid1Detector: result?.gcFid1?.detector, gcFid1ColumnPhase: result?.gcFid1?.columnId?.column, gcFid1ColumnParam: result?.gcFid1?.columnParameters, gcFid1ThicknessPhase: result?.gcFid1?.thicknessPhase,
                         gcFid1Gas: result?.gcFid1?.gas, gcFid1GasVelocity: result?.gcFid1?.gasVelocity, gcFid1GasPressure: result?.gcFid1?.pressure, gcFid1InjTemp: result?.gcFid1?.injTemp,
                         gcFid1DetTemp: result?.gcFid1?.detTemp, gcFid1Vol: result?.gcFid1?.vol, gcFid1Split: result?.gcFid1?.split, gcFid1Tempprogram: result?.gcFid1?.tempProgram,
                         gcFid2Device: result?.gcFid2?.gcDevice?.gcDevice, gcFid2Integrator: result?.gcFid2?.integrator, gcFid2AnProc: result?.gcFid2?.anProc,
                         gcFid2Detector: result?.gcFid2?.detector, gcFid2ColumnPhase: result?.gcFid2?.columnId?.column, gcFid2ColumnParam: result?.gcFid2?.columnParameters, gcFid2ThicknessPhase: result?.gcFid2?.thicknessPhase,
                         gcFid2Gas: result?.gcFid2?.gas, gcFid2GasVelocity: result?.gcFid2?.gasVelocity, gcFid2GasPressure: result?.gcFid2?.pressure, gcFid2InjTemp: result?.gcFid2?.injTemp,
                         gcFid2DetTemp: result?.gcFid2?.detTemp, gcFid2Vol: result?.gcFid2?.vol, gcFid2Split: result?.gcFid2?.split, gcFid2Tempprogram: result?.gcFid2?.tempProgram,
                         gcMc1GcDevice: result?.gcMs1?.gcDevice?.gcDevice, gcMc1DetSer: result?.gcMs1?.detSer, gcMc1Process: result?.gcMs1?.process, gcMc1ColumnPhase: result?.gcMs1?.columnId?.column, gcMc1ColumnParam: result?.gcMs1?.columnParameters,
                         gcMc1ThicknessPhase: result?.gcMs1?.thicknessPhase, gcMc1Gas: result?.gcMs1?.gas, gcMc1GasVelocity: result?.gcMs1?.gasVelocity, gcMc1GasPress: result?.gcMs1?.gasPres, gcMc1Vol: result?.gcMs1?.vol,
                         gcMc1SplitRatio: result?.gcMs1?.splitRatio, gcMc1InjTemp: result?.gcMs1?.injTemp, gcMc1DetTemp: result?.gcMs1?.detTemp, gcMc1InterfaceTemp: result?.gcMs1?.interfaceTemp,
                         gcMc1IonSourceTemp: result?.gcMs1?.ionSourceTemp, gcMc1QuadrupTemp: result?.gcMs1?.quadrupTemp, gcMc1ElMult: result?.gcMs1?.elMult, gcMc1TransfLine: result?.gcMs1?.transfLine,
                         gcMc1TempProgram: result?.gcMs1?.tempProgram, gcMc1IonVolt: result?.gcMs1?.ionVolt, gcMc1IonizationCurrent: result?.gcMs1?.ionizationCurrent, gcMc1ScanMass: result?.gcMs1?.scanMass,
                         gcMc1ScanS: result?.gcMs1?.scanS, gcMc1Time: result?.gcMs1?.time, gcMc1Detector: result?.gcMs1?.detector,
                         gcMc2GcDevice: result?.gcMs2?.gcDevice?.gcDevice, gcMc2DetSer: result?.gcMs2?.detSer, gcMc2Process: result?.gcMs2?.process, gcMc2ColumnPhase: result?.gcMs2?.columnId?.column, gcMc2ColumnParam: result?.gcMs2?.columnParameters,
                         gcMc2ThicknessPhase: result?.gcMs2?.thicknessPhase, gcMc2Gas: result?.gcMs2?.gas, gcMc2GasVelocity: result?.gcMs2?.gasVelocity, gcMc2GasPress: result?.gcMs2?.gasPres, gcMc2Vol: result?.gcMs2?.vol,
                         gcMc2SplitRatio: result?.gcMs2?.splitRatio, gcMc2InjTemp: result?.gcMs2?.injTemp, gcMc2DetTemp: result?.gcMs2?.detTemp, gcMc2InterfaceTemp: result?.gcMs2?.interfaceTemp,
                         gcMc2IonSourceTemp: result?.gcMs2?.ionSourceTemp, gcMc2QuadrupTemp: result?.gcMs2?.quadrupTemp, gcMc2ElMult: result?.gcMs2?.elMult, gcMc2TransfLine: result?.gcMs2?.transfLine,
                         gcMc2TempProgram: result?.gcMs2?.tempProgram, gcMc2IonVolt: result?.gcMs2?.ionVolt, gcMc2IonizationCurrent: result?.gcMs2?.ionizationCurrent, gcMc2ScanMass: result?.gcMs2?.scanMass,
                         gcMc2ScanS: result?.gcMs2?.scanS, gcMc2Time: result?.gcMs2?.time, gcMc2Detector: result?.gcMs2?.detector,
                         gcMc3GcDevice: result?.gcMs3?.gcDevice?.gcDevice, gcMc3DetSer: result?.gcMs3?.detSer, gcMc3Process: result?.gcMs3?.process, gcMc3ColumnPhase: result?.gcMs3?.columnId?.column, gcMc3ColumnParam: result?.gcMs3?.columnParameters,
                         gcMc3ThicknessPhase: result?.gcMs3?.thicknessPhase, gcMc3Gas: result?.gcMs3?.gas, gcMc3GasVelocity: result?.gcMs3?.gasVelocity, gcMc3GasPress: result?.gcMs3?.gasPres, gcMc3Vol: result?.gcMs3?.vol,
                         gcMc3SplitRatio: result?.gcMs3?.splitRatio, gcMc3InjTemp: result?.gcMs3?.injTemp, gcMc3DetTemp: result?.gcMs3?.detTemp, gcMc3InterfaceTemp: result?.gcMs3?.interfaceTemp,
                         gcMc3IonSourceTemp: result?.gcMs3?.ionSourceTemp, gcMc3QuadrupTemp: result?.gcMs3?.quadrupTemp, gcMc3ElMult: result?.gcMs3?.elMult, gcMc3TransfLine: result?.gcMs3?.transfLine,
                         gcMc3TempProgram: result?.gcMs3?.tempProgram, gcMc3IonVolt: result?.gcMs3?.ionVolt, gcMc3IonizationCurrent: result?.gcMs3?.ionizationCurrent, gcMc3ScanMass: result?.gcMs3?.scanMass,
                         gcMc3ScanS: result?.gcMs3?.scanS, gcMc3Time: result?.gcMs3?.time, gcMc3Detector: result?.gcMs3?.detector,
                         gcMc4GcDevice: result?.gcMs4?.gcDevice?.gcDevice, gcMc4DetSer: result?.gcMs4?.detSer, gcMc4Process: result?.gcMs4?.process, gcMc4ColumnPhase: result?.gcMs4?.columnId?.column, gcMc4ColumnParam: result?.gcMs4?.columnParameters,
                         gcMc4ThicknessPhase: result?.gcMs4?.thicknessPhase, gcMc4Gas: result?.gcMs4?.gas, gcMc4GasVelocity: result?.gcMs4?.gasVelocity, gcMc4GasPress: result?.gcMs4?.gasPres, gcMc4Vol: result?.gcMs4?.vol,
                         gcMc4SplitRatio: result?.gcMs4?.splitRatio, gcMc4InjTemp: result?.gcMs4?.injTemp, gcMc4DetTemp: result?.gcMs4?.detTemp, gcMc4InterfaceTemp: result?.gcMs4?.interfaceTemp,
                         gcMc4IonSourceTemp: result?.gcMs4?.ionSourceTemp, gcMc4QuadrupTemp: result?.gcMs4?.quadrupTemp, gcMc4ElMult: result?.gcMs4?.elMult, gcMc4TransfLine: result?.gcMs4?.transfLine,
                         gcMc4TempProgram: result?.gcMs4?.tempProgram, gcMc4IonVolt: result?.gcMs4?.ionVolt, gcMc4IonizationCurrent: result?.gcMs4?.ionizationCurrent, gcMc4ScanMass: result?.gcMs4?.scanMass,
                         gcMc4ScanS: result?.gcMs4?.scanS, gcMc4Time: result?.gcMs4?.time, gcMc4Detector: result?.gcMs4?.detector
        ]
        return chemoType
    }

    public def getSpecCompByChemotypeAndSpeciesId(def id){
        def result = SpecComp?.executeQuery("select compound.compound, minimum, maximum from SpecComp where chemoType=:id order by ((minimum + maximum) / 2) desc", [id: id])
        return result
    }
}