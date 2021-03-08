<g:if test="${chemoType.gcMc1Detector != null}">
    <p style="text-align: justify; padding-top: 20px"><b><g:message code="gcmsanalysis.info.gstitle" /></b></p>
</g:if>
<g:if test="${chemoType.gcMc1GcDevice != null}">
    <p style="text-align: justify;"><b><g:message code="gcmsanalysis.info.gc" /></b> ${chemoType.gcMc1GcDevice}</p>
</g:if>
<g:if test="${chemoType.gcMc1DetSer != null}">
    <p style="text-align: justify;"><b><g:message code="gcmsanalysis.info.msDetector" /></b> ${chemoType.gcMc1DetSer}</p>
</g:if>
<g:if test="${chemoType.gcMc1Process != null}">
    <p style="text-align: justify;"><b><g:message code="gcmsanalysis.info.datahandling" /></b> ${chemoType.gcMc1Process}</p>
</g:if>
<g:if test="${chemoType.gcMc1ColumnPhase != null || chemoType.gcMc1ColumnParam != null || chemoType.gcMc1ThicknessPhase != null}">
    <p style="text-align: justify;"><b><g:message code="gcmsanalysis.info.column" /></b> ${chemoType.gcMc1ColumnPhase} ${chemoType.gcMc1ColumnParam} ${chemoType.gcMc1ThicknessPhase}</p>
</g:if>
<g:if test="${chemoType.gcMc1Gas != null || chemoType.gcMc1GasVelocity != null || chemoType.gcMc1GasPress != null}">
    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcMc1Gas != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.gas" /></b> ${chemoType.gcMc1Gas}</span></g:if> <g:if test="${chemoType.gcMc1GasVelocity != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.gasflow" /></b> ${chemoType.gcMc1GasVelocity}</span></g:if> <g:if test="${chemoType.gcMc1GasPress != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.inletpressure" /></b> ${chemoType.gcMc1GasPress}</span></g:if></p>
</g:if>
<g:if test="${chemoType.gcMc1Vol != null || chemoType.gcMc1SplitRatio != null}">
    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcMc1Vol != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.injectionVolume" /></b> ${chemoType.gcMc1Vol}</span></g:if> <g:if test="${chemoType.gcMc1SplitRatio != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.injectionMode" /></b> ${chemoType.gcMc1SplitRatio}</span></g:if></p>
</g:if>
<g:if test="${chemoType.gcMc1InjTemp != null || chemoType.gcMc1DetTemp != null}">
    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcMc1InjTemp != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.injectiontemperature" /></b> ${chemoType.gcMc1InjTemp}</span></g:if> <g:if test="${chemoType.gcMc1DetTemp != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.detectortemperature" /></b> ${chemoType.gcMc1DetTemp}</span></g:if></p>
</g:if>
<g:if test="${chemoType.gcMc1InterfaceTemp != null || chemoType.gcMc1IonSourceTemp != null}">
    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcMc1InterfaceTemp != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.msInterface" /></b> ${chemoType.gcMc1InterfaceTemp}</span></g:if> <g:if test="${chemoType.gcMc1IonSourceTemp != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.ionSourceTemperature" /></b> ${chemoType.gcMc1IonSourceTemp}</span></g:if></p>
</g:if>
<g:if test="${chemoType.gcMc1QuadrupTemp != null || chemoType.gcMc1ElMult != null}">
    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcMc1QuadrupTemp != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.quadrupleTemperature" /></b> ${chemoType.gcMc1QuadrupTemp}</span></g:if> <g:if test="${chemoType.gcMc1ElMult != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.electronMultiplier" /></b> ${chemoType.gcMc1ElMult}</span></g:if></p>
</g:if>
<g:if test="${chemoType.gcMc1TransfLine != null}">
    <p style="text-align: justify;"><b><g:message code="gcmsanalysis.info.transferLineTemperature" /></b> ${chemoType.gcMc1TransfLine}</p>
</g:if>
<g:if test="${chemoType.gcMc1TempProgram != null}">
    <p style="text-align: justify;"><b><g:message code="gcmsanalysis.info.ovenTemperatureProgram" /></b> ${chemoType.gcMc1TempProgram}</p>
</g:if>
<g:if test="${chemoType.gcMc1IonVolt != null || chemoType.gcMc1IonizationCurrent != null}">
    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcMc1IonVolt != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.msMode" /></b> ${chemoType.gcMc1IonVolt}</span></g:if> <g:if test="${chemoType.gcMc1IonizationCurrent != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.ionizationCurrent" /></b> ${chemoType.gcMc1IonizationCurrent}</span></g:if></p>
</g:if>
<g:if test="${chemoType.gcMc1ScanMass != null || chemoType.gcMc1ScanS != null || chemoType.gcMc1Time != null}">
    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcMc1ScanMass != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.massRange" /></b> ${chemoType.gcMc1ScanMass}</span></g:if> <g:if test="${chemoType.gcMc1ScanS != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.scanSpeed" /></b> ${chemoType.gcMc1ScanS}</span></g:if> <g:if test="${chemoType.gcMc1Time != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.time" /></b> ${chemoType.gcMc1Time}</span></g:if></p>
</g:if>

<g:if test="${chemoType.gcMc2Detector != null}">
    <p style="text-align: justify; padding-top: 20px"><b><g:message code="gcmsanalysis.info.gstitle" /></b></p>
</g:if>
<g:if test="${chemoType.gcMc2GcDevice != null}">
    <p style="text-align: justify;"><b><g:message code="gcmsanalysis.info.gc" /></b> ${chemoType.gcMc2GcDevice}</p>
</g:if>
<g:if test="${chemoType.gcMc2DetSer != null}">
    <p style="text-align: justify;"><b><g:message code="gcmsanalysis.info.msDetector" /></b> ${chemoType.gcMc2DetSer}</p>
</g:if>
<g:if test="${chemoType.gcMc2Process != null}">
    <p style="text-align: justify;"><b><g:message code="gcmsanalysis.info.datahandling" /></b> ${chemoType.gcMc2Process}</p>
</g:if>
<g:if test="${chemoType.gcMc2ColumnPhase != null || chemoType.gcMc2ColumnParam != null || chemoType.gcMc2ThicknessPhase != null}">
    <p style="text-align: justify;"><b><g:message code="gcmsanalysis.info.column" /></b> ${chemoType.gcMc2ColumnPhase} ${chemoType.gcMc2ColumnParam} ${chemoType.gcMc2ThicknessPhase}</p>
</g:if>
<g:if test="${chemoType.gcMc2Gas != null || chemoType.gcMc2GasVelocity != null || chemoType.gcMc2GasPress != null}">
    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcMc2Gas != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.gas" /></b> ${chemoType.gcMc2Gas}</span></g:if> <g:if test="${chemoType.gcMc2GasVelocity != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.gasflow" /></b> ${chemoType.gcMc2GasVelocity}</span></g:if> <g:if test="${chemoType.gcMc2GasPress != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.inletpressure" /></b> ${chemoType.gcMc2GasPress}</span></g:if></p>
</g:if>
<g:if test="${chemoType.gcMc2Vol != null || chemoType.gcMc2SplitRatio != null}">
    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcMc2Vol != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.injectionVolume" /></b> ${chemoType.gcMc2Vol}</span></g:if> <g:if test="${chemoType.gcMc2SplitRatio != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.injectionMode" /></b> ${chemoType.gcMc2SplitRatio}</span></g:if></p>
</g:if>
<g:if test="${chemoType.gcMc2InjTemp != null || chemoType.gcMc2DetTemp != null}">
    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcMc2InjTemp != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.injectiontemperature" /></b> ${chemoType.gcMc2InjTemp}</span></g:if> <g:if test="${chemoType.gcMc2DetTemp != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.detectortemperature" /></b> ${chemoType.gcMc2DetTemp}</span></g:if></p>
</g:if>
<g:if test="${chemoType.gcMc2InterfaceTemp != null || chemoType.gcMc2IonSourceTemp != null}">
    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcMc2InterfaceTemp != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.msInterface" /></b> ${chemoType.gcMc2InterfaceTemp}</span></g:if> <g:if test="${chemoType.gcMc2IonSourceTemp != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.ionSourceTemperature" /></b> ${chemoType.gcMc2IonSourceTemp}</span></g:if></p>
</g:if>
<g:if test="${chemoType.gcMc2QuadrupTemp != null || chemoType.gcMc2ElMult != null}">
    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcMc2QuadrupTemp != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.quadrupleTemperature" /></b> ${chemoType.gcMc2QuadrupTemp}</span></g:if> <g:if test="${chemoType.gcMc2ElMult != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.electronMultiplier" /></b> ${chemoType.gcMc2ElMult}</span></g:if></p>
</g:if>
<g:if test="${chemoType.gcMc2TransfLine != null}">
    <p style="text-align: justify;"><b><g:message code="gcmsanalysis.info.transferLineTemperature" /></b> ${chemoType.gcMc2TransfLine}</p>
</g:if>
<g:if test="${chemoType.gcMc2TempProgram != null}">
    <p style="text-align: justify;"><b><g:message code="gcmsanalysis.info.ovenTemperatureProgram" /></b> ${chemoType.gcMc2TempProgram}</p>
</g:if>
<g:if test="${chemoType.gcMc2IonVolt != null || chemoType.gcMc2IonizationCurrent != null}">
    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcMc2IonVolt != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.msMode" /></b> ${chemoType.gcMc2IonVolt}</span></g:if> <g:if test="${chemoType.gcMc2IonizationCurrent != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.ionizationCurrent" /></b> ${chemoType.gcMc2IonizationCurrent}</span></g:if></p>
</g:if>
<g:if test="${chemoType.gcMc2ScanMass != null || chemoType.gcMc2ScanS != null || chemoType.gcMc2Time != null}">
    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcMc2ScanMass != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.massRange" /></b> ${chemoType.gcMc2ScanMass}</span></g:if> <g:if test="${chemoType.gcMc2ScanS != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.scanSpeed" /></b> ${chemoType.gcMc2ScanS}</span></g:if> <g:if test="${chemoType.gcMc2Time != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.time" /></b> ${chemoType.gcMc2Time}</span></g:if></p>
</g:if>

<g:if test="${chemoType.gcMc3Detector != null}">
    <p style="text-align: justify; padding-top: 20px"><b><g:message code="gcmsanalysis.info.gstitle" /></b></p>
</g:if>
<g:if test="${chemoType.gcMc3GcDevice != null}">
    <p style="text-align: justify;"><b><g:message code="gcmsanalysis.info.gc" /></b> ${chemoType.gcMc3GcDevice}</p>
</g:if>
<g:if test="${chemoType.gcMc3DetSer != null}">
    <p style="text-align: justify;"><b><g:message code="gcmsanalysis.info.msDetector" /></b> ${chemoType.gcMc3DetSer}</p>
</g:if>
<g:if test="${chemoType.gcMc3Process != null}">
    <p style="text-align: justify;"><b><g:message code="gcmsanalysis.info.datahandling" /></b> ${chemoType.gcMc3Process}</p>
</g:if>
<g:if test="${chemoType.gcMc3ColumnPhase != null || chemoType.gcMc3ColumnParam != null || chemoType.gcMc3ThicknessPhase != null}">
    <p style="text-align: justify;"><b><g:message code="gcmsanalysis.info.column" /></b> ${chemoType.gcMc3ColumnPhase} ${chemoType.gcMc3ColumnParam} ${chemoType.gcMc3ThicknessPhase}</p>
</g:if>
<g:if test="${chemoType.gcMc3Gas != null || chemoType.gcMc3GasVelocity != null || chemoType.gcMc3GasPress != null}">
    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcMc3Gas != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.gas" /></b> ${chemoType.gcMc3Gas}</span></g:if> <g:if test="${chemoType.gcMc3GasVelocity != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.gasflow" /></b> ${chemoType.gcMc3GasVelocity}</span></g:if> <g:if test="${chemoType.gcMc3GasPress != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.inletpressure" /></b> ${chemoType.gcMc3GasPress}</span></g:if></p>
</g:if>
<g:if test="${chemoType.gcMc3Vol != null || chemoType.gcMc3SplitRatio != null}">
    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcMc3Vol != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.injectionVolume" /></b> ${chemoType.gcMc3Vol}</span></g:if> <g:if test="${chemoType.gcMc3SplitRatio != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.injectionMode" /></b> ${chemoType.gcMc3SplitRatio}</span></g:if></p>
</g:if>
<g:if test="${chemoType.gcMc3InjTemp != null || chemoType.gcMc3DetTemp != null}">
    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcMc3InjTemp != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.injectiontemperature" /></b> ${chemoType.gcMc3InjTemp}</span></g:if> <g:if test="${chemoType.gcMc3DetTemp != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.detectortemperature" /></b> ${chemoType.gcMc3DetTemp}</span></g:if></p>
</g:if>
<g:if test="${chemoType.gcMc3InterfaceTemp != null || chemoType.gcMc3IonSourceTemp != null}">
    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcMc3InterfaceTemp != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.msInterface" /></b> ${chemoType.gcMc3InterfaceTemp}</span></g:if> <g:if test="${chemoType.gcMc3IonSourceTemp != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.ionSourceTemperature" /></b> ${chemoType.gcMc3IonSourceTemp}</span></g:if></p>
</g:if>
<g:if test="${chemoType.gcMc3QuadrupTemp != null || chemoType.gcMc3ElMult != null}">
    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcMc3QuadrupTemp != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.quadrupleTemperature" /></b> ${chemoType.gcMc3QuadrupTemp}</span></g:if> <g:if test="${chemoType.gcMc3ElMult != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.electronMultiplier" /></b> ${chemoType.gcMc3ElMult}</span></g:if></p>
</g:if>
<g:if test="${chemoType.gcMc3TransfLine != null}">
    <p style="text-align: justify;"><b><g:message code="gcmsanalysis.info.transferLineTemperature" /></b> ${chemoType.gcMc3TransfLine}</p>
</g:if>
<g:if test="${chemoType.gcMc3TempProgram != null}">
    <p style="text-align: justify;"><b><g:message code="gcmsanalysis.info.ovenTemperatureProgram" /></b> ${chemoType.gcMc3TempProgram}</p>
</g:if>
<g:if test="${chemoType.gcMc3IonVolt != null || chemoType.gcMc3IonizationCurrent != null}">
    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcMc3IonVolt != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.msMode" /></b> ${chemoType.gcMc3IonVolt}</span></g:if> <g:if test="${chemoType.gcMc3IonizationCurrent != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.ionizationCurrent" /></b> ${chemoType.gcMc3IonizationCurrent}</span></g:if></p>
</g:if>
<g:if test="${chemoType.gcMc3ScanMass != null || chemoType.gcMc3ScanS != null || chemoType.gcMc3Time != null}">
    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcMc3ScanMass != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.massRange" /></b> ${chemoType.gcMc3ScanMass}</span></g:if> <g:if test="${chemoType.gcMc3ScanS != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.scanSpeed" /></b> ${chemoType.gcMc3ScanS}</span></g:if> <g:if test="${chemoType.gcMc3Time != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.time" /></b> ${chemoType.gcMc3Time}</span></g:if></p>
</g:if>

<g:if test="${chemoType.gcMc4Detector != null}">
    <p style="text-align: justify; padding-top: 20px"><b><g:message code="gcmsanalysis.info.gstitle" /></b></p>
</g:if>
<g:if test="${chemoType.gcMc4GcDevice != null}">
    <p style="text-align: justify;"><b><g:message code="gcmsanalysis.info.gc" /></b> ${chemoType.gcMc4GcDevice}</p>
</g:if>
<g:if test="${chemoType.gcMc4DetSer != null}">
    <p style="text-align: justify;"><b><g:message code="gcmsanalysis.info.msDetector" /></b> ${chemoType.gcMc4DetSer}</p>
</g:if>
<g:if test="${chemoType.gcMc4Process != null}">
    <p style="text-align: justify;"><b><g:message code="gcmsanalysis.info.datahandling" /></b> ${chemoType.gcMc4Process}</p>
</g:if>
<g:if test="${chemoType.gcMc4ColumnPhase != null || chemoType.gcMc4ColumnParam != null || chemoType.gcMc4ThicknessPhase != null}">
    <p style="text-align: justify;"><b><g:message code="gcmsanalysis.info.column" /></b> ${chemoType.gcMc4ColumnPhase} ${chemoType.gcMc4ColumnParam} ${chemoType.gcMc4ThicknessPhase}</p>
</g:if>
<g:if test="${chemoType.gcMc4Gas != null || chemoType.gcMc4GasVelocity != null || chemoType.gcMc4GasPress != null}">
    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcMc4Gas != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.gas" /></b> ${chemoType.gcMc4Gas}</span></g:if> <g:if test="${chemoType.gcMc4GasVelocity != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.gasflow" /></b> ${chemoType.gcMc4GasVelocity}</span></g:if> <g:if test="${chemoType.gcMc4GasPress != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.inletpressure" /></b> ${chemoType.gcMc4GasPress}</span></g:if></p>
</g:if>
<g:if test="${chemoType.gcMc4Vol != null || chemoType.gcMc4SplitRatio != null}">
    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcMc4Vol != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.injectionVolume" /></b> ${chemoType.gcMc4Vol}</span></g:if> <g:if test="${chemoType.gcMc4SplitRatio != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.injectionMode" /></b> ${chemoType.gcMc4SplitRatio}</span></g:if></p>
</g:if>
<g:if test="${chemoType.gcMc4InjTemp != null || chemoType.gcMc4DetTemp != null}">
    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcMc4InjTemp != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.injectiontemperature" /></b> ${chemoType.gcMc4InjTemp}</span></g:if> <g:if test="${chemoType.gcMc4DetTemp != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.detectortemperature" /></b> ${chemoType.gcMc4DetTemp}</span></g:if></p>
</g:if>
<g:if test="${chemoType.gcMc4InterfaceTemp != null || chemoType.gcMc4IonSourceTemp != null}">
    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcMc4InterfaceTemp != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.msInterface" /></b> ${chemoType.gcMc4InterfaceTemp}</span></g:if> <g:if test="${chemoType.gcMc4IonSourceTemp != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.ionSourceTemperature" /></b> ${chemoType.gcMc4IonSourceTemp}</span></g:if></p>
</g:if>
<g:if test="${chemoType.gcMc4QuadrupTemp != null || chemoType.gcMc4ElMult != null}">
    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcMc3QuadrupTemp != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.quadrupleTemperature" /></b> ${chemoType.gcMc4QuadrupTemp}</span></g:if> <g:if test="${chemoType.gcMc4ElMult != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.electronMultiplier" /></b> ${chemoType.gcMc4ElMult}</span></g:if></p>
</g:if>
<g:if test="${chemoType.gcMc4TransfLine != null}">
    <p style="text-align: justify;"><b><g:message code="gcmsanalysis.info.transferLineTemperature" /></b> ${chemoType.gcMc4TransfLine}</p>
</g:if>
<g:if test="${chemoType.gcMc4TempProgram != null}">
    <p style="text-align: justify;"><b><g:message code="gcmsanalysis.info.ovenTemperatureProgram" /></b> ${chemoType.gcMc4TempProgram}</p>
</g:if>
<g:if test="${chemoType.gcMc4IonVolt != null || chemoType.gcMc3IonizationCurrent != null}">
    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcMc4IonVolt != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.msMode" /></b> ${chemoType.gcMc4IonVolt}</span></g:if> <g:if test="${chemoType.gcMc4IonizationCurrent != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.ionizationCurrent" /></b> ${chemoType.gcMc4IonizationCurrent}</span></g:if></p>
</g:if>
<g:if test="${chemoType.gcMc4ScanMass != null || chemoType.gcMc4ScanS != null || chemoType.gcMc4Time != null}">
    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcMc4ScanMass != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.massRange" /></b> ${chemoType.gcMc4ScanMass}</span></g:if> <g:if test="${chemoType.gcMc4ScanS != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.scanSpeed" /></b> ${chemoType.gcMc4ScanS}</span></g:if> <g:if test="${chemoType.gcMc4Time != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcmsanalysis.info.time" /></b> ${chemoType.gcMc4Time}</span></g:if></p>
</g:if>