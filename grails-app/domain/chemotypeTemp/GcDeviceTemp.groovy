package chemotypeTemp

class GcDeviceTemp {

    String gcDevice
    String manufactor

    static constraints = {
        gcDevice nullable: true
        manufactor nullable: true
    }

    static mapping = {
        table "gc_device_temp"
        version false
        gcDevice column: "gc_device"
        manufactor column: "manufactor"
    }
}
