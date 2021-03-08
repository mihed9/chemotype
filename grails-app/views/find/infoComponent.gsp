<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="component"/>
    <title></title>
</head>

<body>
<g:render template="/generalTemplate/navbar"/>
<div class="container">
    <div class="row boxShadow3">
    <div class="row" style="margin: 2em">
        <p class="text alert-success"><b><g:message code="component.info.instruction" /></b>
            <g:message code="component.info.instruction.description" /></p>
    </div>
    <div class="row boxShadow5">
        <h4><center>${compound?.compound}</center></h4><br>
        <div class="col-md-4"><img src="/images/compoundImg/${compound?.fileName}" alt="${compound?.compound}"></div>
        <div class="col-md-8">
            <div class="row">
                <div class="col-md-3"><b><g:message code="component.info.cas" /></b></div>
                <div class="col-md-7">${compound?.cas}</div>
            </div>
            <div class="row">
                <div class="col-md-3"><b><g:message code="component.info.iupac" /></b></div>
                <div class="col-md-7">${compound?.iupac}</div>
            </div>
            <div class="row">
                <div class="col-md-3"><b><g:message code="component.info.synonyms" /></b></div>
            <div class="col-md-7">
                ${synonims}
            </div>
            </div>
            <div class="row">
                <div class="col-md-3"><b><g:message code="component.info.formula" /></b></div>
                <div class="col-md-7">${compound?.brutto}</div>
            </div>
            <div class="row">
                <div class="col-md-3"><b><g:message code="component.info.moll" /></b></div>
                <div class="col-md-7">${compound?.moll}</div>
            </div>
            <div class="row">
                <div class="col-md-3"><b><g:message code="component.info.composition" /></b></div>
                <div class="col-md-7">${compound?.composition}</div>
            </div>
        </div>
    </div>
    <g:if test="${compound?.definition != null}">
        <div class="row boxShadow5">
            <center><h4><g:message code="component.info.general.defenition" /></h4></center><br>
            <div>${compound?.definition.encodeAsRaw()}</div>
        </div>
    </g:if>
    <g:else>
        <div class="row boxShadow5" style="display: none">
            <center><h4><g:message code="component.info.general.defenition" /></h4></center><br>
            <div>${compound?.definition.encodeAsRaw()}</div>
        </div>
    </g:else>
    <g:if test="${compound?.state != null || compound?.stateNote != null || compound?.solubility != null || compound?.tMelt != null || compound?.tBoil != null || compound?.tFlash != null}">
    <div class="row boxShadow5">
        <center><h4><g:message code="component.info.physical" /></h4></center><br>
        <div class="row">
            <div class="col-md-12">
                <g:if test="${compound?.state != null}">
                    <div class="col-md-1"><b><g:message code="component.info.state" /></b></div>
                    <div class="col-md-11">${compound?.state} <g:if test="${compound?.stateNote != null}">(${compound?.stateNote})</g:if></div>
                </g:if>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <g:if test="${compound?.tMelt != null}">
                    <div class="col-md-1"><b><g:message code="component.info.tmelt" />:</b></div>
                    <div class="col-md-11">${compound?.tMelt}</div>
                </g:if>
                <g:if test="${compound?.tBoil != null}">
                    <div class="col-md-1"><b><g:message code="component.info.tboil" />:</b></div>
                    <div class="col-md-11">${compound?.tBoil}</div>
                </g:if>
                <g:if test="${compound?.tFlash != null}">
                    <div class="col-md-1"><b><g:message code="component.info.tflush" />:</b></div>
                    <div class="col-md-11">${compound?.tFlash}</div>
                </g:if>
            </div>
        </div>
        <g:if test="${compound?.solubility != null}">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-1"><b><g:message code="component.info.solublity" /></b></div>
                <div class="col-md-11">${compound?.solubility}</div>
            </div>
        </div>
        </g:if>
    </div>
    </g:if>
    <g:if test="${compound?.pharmacology != null}">
        <div class="row boxShadow5">
            <center><h4><g:message code="component.info.pharmacology" /></h4></center><br>
            <div name="pharmacology">${compound?.pharmacology?.encodeAsRaw()}</div>
        </div>
    </g:if>
    <g:else>
        <div class="row boxShadow5" style="display: none">
            <center><h4><g:message code="component.info.pharmacology" /></h4></center><br>
            <div name="pharmacology">${compound?.pharmacology?.encodeAsRaw()}</div>
        </div>
    </g:else>
        <g:if test="${table != null}">
            <div class="row boxShadow5">
                <div class="row" style="text-align: center"><h4><span style="text-align: center">The compound <b>${compound?.compound}</b> was found in the number of essential oil composition. They are listed below:</span></h4></div>
                <div class="row" style="margin-top: 1em">
                    <table class="table table-bordered">
                    <thead>
                    <tr style="background-color: #d6e9c6;">
                        <th class="col-md-1">#</th>
                        <th class="col-md-2">Species</th>
                        <th class="col-md-5">Chemotype</th>
                        <th class="col-md-2">Country</th>
                        <th class="col-md-2">Percentage, %</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each var="t" in="${table}">
                        <tr>
                            <td rowspan="${t.size}" class="col-md-1">${t.number}</td>
                            <td rowspan="${t.size}">${t.nameSpecies}</td>
                        </tr>
                        <g:each var="chem" in="${t.chemotypes}">
                            <tr>
                                <td>${chem[0]}</td>
                                <td>${chem[1]}</td>
                                <td>${chem[2]} - ${chem[3]}</td>
                            </tr>
                        </g:each>
                    </g:each>
                    </tbody>
                </table>
                </div>
            </div>
        </g:if>
        </div>
    <g:render template="/generalTemplate/footer"/>
</div>
</body>
</html>