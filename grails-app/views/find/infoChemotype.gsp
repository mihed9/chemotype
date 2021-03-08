<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="chemoType"/>
    <title></title>
</head>

<body>
<g:render template="/generalTemplate/navbar"/>
<div class="container">
    <div class="row boxShadow3">
    <div class="row">
        <center><h2><g:message code="chemoType.info.title" /></h2></center>
        <div style="margin-left: 0; margin-right: 0" class="row col-md-12">
            <p class="text alert-success"><b><g:message code="chemoType.info.instruction" /></b>
                <g:message code="chemoType.info.instruction.description" /></p>
        </div>
        <div style="margin-left: 0; margin-right: 0" class="row col-md-12">
            <div class="row boxShadow5">
                <g:if test="${chemoType?.species != null}">
                    <p style="text-align: justify;"><b><g:message code="chemoType.info.species" /></b> ${chemoType.species}</p>
                </g:if>
                <g:if test="${chemoType.partPlan != null}">
                    <p style="text-align: justify;"><b><g:message code="chemoType.info.plan" /></b> ${chemoType.partPlan}</p>
                </g:if>
                <g:if test="${chemoType.nameChemotype != null}">
                    <p style="text-align: justify;"><b><g:message code="chemoType.info.chemoType" /></b> ${chemoType.nameChemotype}</p>
                </g:if>
                <g:if test="${chemoType.country != null}">
                    <p style="text-align: justify;"><b><g:message code="chemoType.info.country" /></b> ${chemoType.country}</p>
                </g:if>
                <g:if test="${chemoType.region != null}">
                    <p style="text-align: justify;"><b><g:message code="chemoType.info.region" /></b> ${chemoType.region}</p>
                </g:if>
            </div>
            <div class="row boxShadow5">
                <p style="text-align: justify;"><b><g:message code="chemoType.info.isolation" /></b></p>
                <g:if test="${chemoType.hydroditillationNo != null}">
                    <p style="text-align: justify;"><b><g:message code="hydroditillation.info.title" /></b></p>
                </g:if>
                <g:if test="${chemoType.hydroditillationType != null}">
                    <p style="text-align: justify;"><b><g:message code="hydroditillation.info.type" /></b> ${chemoType.hydroditillationType}</p>
                </g:if>
                <g:if test="${chemoType.hydroditillationMassPlant != null || chemoType.hydroditillationVolumeOfWater != null}">
                    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.hydroditillationMassPlant != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="hydroditillation.info.massOfplantMaterial" /></b> ${chemoType.hydroditillationMassPlant}</span></g:if><g:if test="${chemoType.hydroditillationVolumeOfWater != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="hydroditillation.info.volumeOfWater" /></b> ${chemoType.hydroditillationVolumeOfWater}</span></g:if></p>
                </g:if>
                <g:if test="${chemoType.hydroditillationTime != null || chemoType.hydroditillationRate != null || chemoType.hydroditillationYield != null}">
                    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.hydroditillationTime != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="hydroditillation.info.time" /></b> ${chemoType.hydroditillationTime}</span></g:if> <g:if test="${chemoType.hydroditillationRate != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="hydroditillation.info.rate" /></b> ${chemoType.hydroditillationRate}</span></g:if> <g:if test="${chemoType.hydroditillationYield != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"> <b><g:message code="hydroditillation.info.yield" /></b> ${chemoType.hydroditillationYield}</span></g:if></p>
                </g:if>
                <g:if test="${chemoType.hydroditillationNote != null}">
                    <p style="text-align: justify;"><b><g:message code="hydroditillation.info.note" /></b> ${chemoType.hydroditillationNote}</p>
                </g:if>
                <g:if test="${chemoType.hydroditillationAfter != null}">
                    <p style="text-align: justify;"><b><g:message code="hydroditillation.info.after" /></b> ${chemoType.hydroditillationAfter}</p>
                </g:if>

                <g:if test="${chemoType.extractionNo != null}">
                    <p style="text-align: justify; padding-top: 20px"><b><g:message code="extraction.info.title" /></b></p>
                </g:if>
                <g:if test="${chemoType.extractionType != null}">
                    <p style="text-align: justify;"><b><g:message code="hydroditillation.info.type" /></b> ${chemoType.extractionType}</p>
                </g:if>
                <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.extractionMassPlant != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="hydroditillation.info.massOfplantMaterial" /></b> ${chemoType.extractionMassPlant}</span></g:if> <g:if test="${chemoType.extractionVolumeOfExtragent != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="extraction.info.volumeOfExtragent" /></b> ${chemoType.extractionVolumeOfExtragent}</g:if></span></p>
                <g:if test="${chemoType.extractionExtragent != null}">
                    <p style="text-align: justify;"><b><g:message code="extraction.info.extragent" /></b> ${chemoType.extractionExtragent}</p>
                </g:if>
                <g:if test="${chemoType.extractionTime != null}">
                    <p style="text-align: justify;"><b><g:message code="hydroditillation.info.time" /></b> ${chemoType.extractionTime}</p>
                </g:if>
                <g:if test="${chemoType.extractionAfter != null}">
                    <p style="text-align: justify;"><b><g:message code="hydroditillation.info.after" /></b> ${chemoType.extractionAfter}</p>
                </g:if>

            </div>
            <div class="row boxShadow5">
                <p style="text-align: justify;"><b><g:message code="gcanalysis.info.title" /></b></p>
                <g:if test="${chemoType.gcFid1ColumnParam != null}">
                    <p style="text-align: justify;"><b><g:message code="gcanalysis.info.gstitle" /></b></p>
                </g:if>
                <g:if test="${chemoType.gcFid1Device != null || chemoType.gcFid1Integrator != null || chemoType.gcFid1AnProc != null}">
                    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcFid1Device != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcanalysis.info.gc" /></b> ${chemoType.gcFid1Device}</span></g:if> <g:if test="${chemoType.gcFid1Integrator != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcanalysis.info.integrator" /></b> ${chemoType.gcFid1Integrator}</span></g:if> <g:if test="${chemoType.gcFid1AnProc != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcanalysis.info.datahandling" /></b> ${chemoType.gcFid1AnProc}</span></g:if></p>
                </g:if>
                <g:if test="${chemoType.gcFid1Detector != null}">
                    <p style="text-align: justify;"><b><g:message code="gcanalysis.info.detector" /></b> ${chemoType.gcFid1Detector}</p>
                </g:if>
                <g:if test="${chemoType.gcFid1ColumnPhase != null || chemoType.gcFid1ColumnParam != null || chemoType.gcFid1ThicknessPhase != null}">
                    <p style="text-align: justify;"><b><g:message code="gcanalysis.info.column" /></b> ${chemoType.gcFid1ColumnPhase} ${chemoType.gcFid1ColumnParam} ${chemoType.gcFid1ThicknessPhase}</p>
                </g:if>
                <g:if test="${chemoType.gcFid1Gas != null || chemoType.gcFid1GasVelocity != null || chemoType.gcFid1GasPressure != null}">
                    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcFid1Gas != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcanalysis.info.gas" /></b> ${chemoType.gcFid1Gas}</span></g:if> <g:if test="${chemoType.gcFid1GasVelocity != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcanalysis.info.gasflow" /></b> ${chemoType.gcFid1GasVelocity}</span></g:if> <g:if test="${chemoType.gcFid1GasPressure != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcanalysis.info.inletpressure" /></b> ${chemoType.gcFid1GasPressure}</span></g:if></p>
                </g:if>
                <g:if test="${chemoType.gcFid1InjTemp != null || chemoType.gcFid1DetTemp != null}">
                    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcFid1InjTemp != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcanalysis.info.injectiontemperature" /></b> ${chemoType.gcFid1InjTemp}</span></g:if> <g:if test="${chemoType.gcFid1DetTemp != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcanalysis.info.detectortemperature" /></b> ${chemoType.gcFid1DetTemp}</span></g:if></p>
                </g:if>
                <g:if test="${chemoType.gcFid1Vol != null || chemoType.gcFid1Split != null}">
                    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcFid1Vol != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcanalysis.info.injectionVolume" /></b> ${chemoType.gcFid1Vol}</span></g:if> <g:if test="${chemoType.gcFid1Split != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcanalysis.info.splitRatio" /></b> ${chemoType.gcFid1Split}</span></g:if></p>
                </g:if>
                <g:if test="${chemoType.gcFid1Tempprogram != null}">
                    <p style="text-align: justify;"><b><g:message code="gcanalysis.info.ovenTemperatureProgram" /></b> ${chemoType.gcFid1Tempprogram}</p>
                </g:if>

                <g:if test="${chemoType.gcFid2ColumnParam != null}">
                    <p style="text-align: justify; padding-top: 20px"><b><g:message code="gcanalysis.info.gstitle" /></b></p>
                </g:if>
                <g:if test="${chemoType.gcFid2Device != null}">
                    <p style="text-align: justify;"><b><g:message code="gcanalysis.info.gc" /></b> ${chemoType.gcFid2Device}</p>
                </g:if>
                <g:if test="${chemoType.gcFid2Integrator != null}">
                    <p style="text-align: justify;"><b><g:message code="gcanalysis.info.integrator" /></b> ${chemoType.gcFid2Integrator}</p>
                </g:if>
                <g:if test="${chemoType.gcFid2AnProc != null}">
                    <p style="text-align: justify;"><b><g:message code="gcanalysis.info.datahandling" /></b> ${chemoType.gcFid2AnProc}</p>
                </g:if>
                <g:if test="${chemoType.gcFid2Detector != null}">
                    <p style="text-align: justify;"><b><g:message code="gcanalysis.info.detector" /></b> ${chemoType.gcFid2Detector}</p>
                </g:if>
                <g:if test="${chemoType.gcFid2ColumnPhase != null || chemoType.gcFid2ColumnParam != null || chemoType.gcFid2ThicknessPhase != null}">
                    <p style="text-align: justify;"><b><g:message code="gcanalysis.info.column" /></b> ${chemoType.gcFid2ColumnPhase} ${chemoType.gcFid2ColumnParam} ${chemoType.gcFid2ThicknessPhase}</p>
                </g:if>
                <g:if test="${chemoType.gcFid2Gas != null || chemoType.gcFid2GasVelocity != null || chemoType.gcFid2GasPressure != null}">
                    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcFid2Gas != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcanalysis.info.gas" /></b> ${chemoType.gcFid2Gas}</span></g:if> <g:if test="${chemoType.gcFid2GasVelocity != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcanalysis.info.gasflow" /></b> ${chemoType.gcFid2GasVelocity}</span></g:if> <g:if test="${chemoType.gcFid2GasPressure != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcanalysis.info.inletpressure" /></b> ${chemoType.gcFid2GasPressure}</span></g:if></p>
                </g:if>
                <g:if test="${chemoType.gcFid2InjTemp != null || chemoType.gcFid2DetTemp != null}">
                    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcFid2InjTemp != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcanalysis.info.injectiontemperature" /></b> ${chemoType.gcFid2InjTemp}</span></g:if> <g:if test="${chemoType.gcFid2DetTemp != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcanalysis.info.detectortemperature" /></b> ${chemoType.gcFid2DetTemp}</span></g:if></p>
                </g:if>
                <g:if test="${chemoType.gcFid2Vol != null || chemoType.gcFid2Split != null}">
                    <p class="row col-md-12" style="text-align: justify; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><g:if test="${chemoType.gcFid2Vol != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcanalysis.info.injectionVolume" /></b> ${chemoType.gcFid2Vol}</span></g:if> <g:if test="${chemoType.gcFid2Split != null}"><span class="col-md-3" style="margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px;"><b><g:message code="gcanalysis.info.splitRatio" /></b> ${chemoType.gcFid2Split}</span></g:if></p>
                </g:if>
                <g:if test="${chemoType.gcFid2Tempprogram != null}">
                    <p style="text-align: justify;"><b><g:message code="gcanalysis.info.ovenTemperatureProgram" /></b> ${chemoType.gcFid2Tempprogram}</p>
                </g:if>

                <g:render template="/find/gc_mc"/>

                <g:if test="${chemoType.qualAn != null}">
                    <p style="text-align: justify; padding-top: 20px"><b><g:message code="qualitative.analysis" /></b></p>
                    <p style="text-align: justify;">${chemoType.qualAn}</p>
                </g:if>

                <g:if test="${chemoType.quanAn != null}">
                    <p style="text-align: justify;"><b><g:message code="quantitative.analysis" /></b></p>
                    <p style="text-align: justify;">${chemoType.quanAn}</p>
                </g:if>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <b><g:message code="chemoType.info.composition" /></b>
            <table class="table volume table-bordered general-result" cellspacing="0">
                <thead class="alert-info">
                <tr>
                    <th><b><g:message code="chemoType.info.component" /></b></th>
                    <th><b><g:message code="chemoType.info.percentage" /></b></th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${componentPercentage}">
                    <tr>
                        <td>${it[0]} <sup><a href='${createLink(controller: 'variability', action: 'componentInfo')}/${it[0]}' target="_blank" style="margin-left: 5px; font-style: oblique"><g:message code="chemoType.info.info" /></a></sup></td>
                        <td>${it[1]} - ${it[2]}</td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row boxShadow5">
        <p style="text-align: justify;"><b><g:message code="chemoType.info.reference" /></b></p>
        <p style="text-align: justify;"><b><g:message code="chemoType.info.authors" /></b> ${chemoType.autors}</p>
        <p style="text-align: justify;"><b><g:message code="chemoType.info.article" /></b> ${chemoType.title}</p>
        <p style="text-align: justify;"><b><g:message code="chemoType.info.journal" /></b> ${chemoType.journal}</p>
        <p style="text-align: justify;"><b><g:message code="chemoType.info.summary" /></b> <div>${chemoType.summary.encodeAsRaw()}</div></p>
    </div>
    </div>
    <g:render template="/generalTemplate/footer"/>
</div>
</body>
</html>