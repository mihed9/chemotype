package chemotypeTemp

class GasFidAnalysisTemp {

    String detector
    String gfAnalysis
    String columnParameters
    String thicknessPhase
    String gas
    String gasVelocity
    String injTemp
    String detTemp
    String tempProgram
    String integrator
    String vol
    String anProc
    String split
    String pressure
    Integer column
    Integer gcDevice

    static constraints = {
        detector nullable: true
        gfAnalysis nullable: true
        columnParameters nullable: true
        thicknessPhase nullable: true
        gas nullable: true
        gasVelocity nullable: true
        injTemp nullable: true
        detTemp nullable: true
        tempProgram nullable: true
        integrator nullable: true
        vol nullable: true
        anProc nullable: true
        split nullable: true
        pressure nullable: true
        column nullable: true
        gcDevice nullable: true
    }

    static mapping = {
        table "gas_fid_analysis_temp"
        detector column: "detector"
        gfAnalysis column: "gf_analysis"
        columnParameters column: "column_parameters"
        thicknessPhase column: "thickness_phase"
        gas column: "gas"
        gasVelocity column: "gas_velocity"
        injTemp column: "inj_temp"
        detTemp column: "det_temp"
        tempProgram column: "temp_program"
        integrator column: "integrator"
        vol column: "vol"
        anProc column: "an_proc"
        split column: "split"
        pressure column: "pressure"
        column column: "column"
        gcDevice column: "gc_device"
        version false
    }
}
