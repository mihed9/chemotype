package chemoType

class GcDevice {

    String gcDevice
    String manufactor

    static mapping = {
        table "gc_device"
        version false
        gcDevice column: "gc_device"
        manufactor column: "manufactor"
    }

    static constraints = {
        gcDevice nullable: true
        manufactor nullable: true
    }
}