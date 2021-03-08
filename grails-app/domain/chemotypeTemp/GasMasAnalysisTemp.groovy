package chemotypeTemp

import chemoType.Column
import chemoType.GcDevice

class GasMasAnalysisTemp {

    String detector
    String detSer
    String gmNo
    String columnParameters
    String thicknessPhase
    String gas
    String gasVelocity
    String injTemp
    String detTemp
    String tempProgram
    String ionVolt
    String ionSourceTemp
    String scanMass
    String transfLine
    String splitRatio
    String vol
    String elMult
    String gasPres
    String time
    String scanS
    String ionizationCurrent
    String process
    String interfaceTemp
    String quadrupTemp
    Integer column
    Integer gcDevice

    static mapping = {
        table "gas_mas_analysis_temp"
        detector column: "detector"
        detSer column: "det_ser"
        gmNo column: "gm_no"
        columnParameters column: "column_parameters"
        thicknessPhase column: "thickness_phase"
        gas column: "gas"
        gasVelocity column: "gas_velocity"
        injTemp column: "inj_temp"
        detTemp column: "det_temp"
        tempProgram column: "temp_program"
        ionVolt column: "ion_volt"
        ionSourceTemp column: "ion_source_temp"
        scanMass column: "scan_mass"
        transfLine column: "transf_line"
        splitRatio column: "split_ratio"
        vol column: "vol"
        elMult column: "el_mult"
        gasPres column: "gas_pres"
        time column: "time"
        scanS column: "scan_s"
        ionizationCurrent column: "ionization_current"
        process column: "process"
        interfaceTemp column: "interface_temp"
        quadrupTemp column: "quadrup_temp"
        column column: "column"
        gcDevice column: "gc_device"
        version false
    }

    static constraints = {
        detector nullable: true
        detSer nullable: true
        gmNo nullable: true
        columnParameters nullable: true
        thicknessPhase nullable: true
        gas nullable: true
        gasVelocity nullable: true
        injTemp nullable: true
        detTemp nullable: true
        tempProgram nullable: true
        ionVolt nullable: true
        ionSourceTemp nullable: true
        scanMass nullable: true
        transfLine nullable: true
        splitRatio nullable: true
        vol nullable: true
        elMult nullable: true
        gasPres nullable: true
        time nullable: true
        scanS nullable: true
        ionizationCurrent nullable: true
        process nullable: true
        interfaceTemp nullable: true
        quadrupTemp nullable: true
        column nullable: true
        gcDevice nullable: true
    }
}
