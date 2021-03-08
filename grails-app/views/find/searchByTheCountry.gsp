<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="find"/>
    <title></title>
</head>

<body>
<g:render template="/generalTemplate/navbar"/>
<div class="container boxShadow3">
        <div class="row col-md-12 bs-callout bs-callout-danger collapse">
            <p><span><g:message code="search.page.description" /></span></p>
        </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel-group" id="accordionParent">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <img src="/warning.png" width="20" height="20"> <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionParent" href="#collapseInstruction"><g:message code="instruction.title" /></a>
                        </h4>
                    </div>
                    <div id="collapseInstruction" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div align="center" class="embed-responsive embed-responsive-16by9 col-md-12">
                                <video controls class="embed-responsive-item">
                                    <source src="/video/instruction.mp4" type="video/mp4">
                                </video>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row collapse">
        <div class="col-md-4">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title"><center><span class="find-text"><b><g:message code="search.page.step1" /></b></span></center></h3>
                </div>
                <div class="panel-body">
                    <select id="familyGenus" class="chosen-family" data-placeholder="Select Your Family">
                        <option value="0"><g:message code="search.page.step1message" /></option>
                    </select>
                    <button id="choseFamily" type="button" class="btn btn-success btn-custom"><g:message code="button.next" /></button>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title"><center><span class="find-text"><b><g:message code="search.page.step2" /></b></span></center></h3>
                </div>
                <div class="panel-body">
                    <select id="genus" class="chosen-genus" data-placeholder="Select Your Genus">
                        <option value="0"><g:message code="search.page.step2message" /></option>
                    </select>
                    <button id="choseGenus" type="button" class="btn btn-success btn-custom" disabled="disabled"><g:message code="button.next" /></button>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title"><center><span class="find-text"><b><g:message code="search.page.step3" /></b></span></center></h3>
                </div>
                <div class="panel-body">
                    <select id="species" class="chosen-species" data-placeholder="Select Your Species">
                        <option value="0"><g:message code="search.page.step3message" /></option>
                    </select>
                    <button id="choseSpecies" type="button" class="btn btn-success btn-custom" disabled="disabled"><g:message code="button.next" /></button>
                </div>
            </div>
        </div>
    </div>
    <div class="collapse">
       <center><g:message code="search.page.symbols.first"/></center>
    </div>
    <div class="row collapse">
        <div class="col-md-12">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title"><center><span class="find-text"><b><g:message code="search.page.step4" /></b></span></center></h3>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <center><button id="selectAllCountry" type="button" class="btn btn-success btn-sm" disabled="disabled"><g:message code="button.selectAll" /></button>
                            <button id="unSelectAllCountry" type="button" class="btn btn-success btn-sm" disabled="disabled"><g:message code="button.unselectAll" /></button></center>
                    </div>
                    <div id="allCountry" class="row">
                        <g:each var="country" in="${listCountry}">
                            <div class="col-md-4" style="margin-top: 2em">
                                <label class="checkbox-inline"><input disabled="disabled" type="checkbox" id="c${country.id}"><img class="opacity" src="/images/flag-chem/${country.kod}" width="40"/>${country.name}</label>
                            </div>
                        </g:each>
                    </div>
                    <button id="choseCountry" type="button" class="btn btn-success btn-custom" disabled="disabled"><g:message code="button.next" /></button>
                </div>
            </div>
        </div>
    </div>
    <div class="row col-md-12 bs-callout bs-callout-danger">
        <p><span><g:message code="search.page.result.description" /></span></p>
    </div>
    <div id="result" class="row hide-block hide-elem">
        <div class="result-chemoType" style="padding: 1em">
            <center><h2><g:message code="search.page.result.title" /></h2></center>
            <p><span><g:message code="search.page.chemoType.result"/></span></p>
        </div>
            <div class="row">
                <div class="col-md-12" style="margin-left: 2em"><g:message code="search.page.symbols" /></div>
            </div>
        <div>
            <center>
                <a href="/variability/"><button id="newsearch" class="btn btn-success"><g:message code="button.newSearch" /></button></a>
                <button id="compare" class="btn btn-warning"><g:message code="button.compare" /></button>
            </center>
        </div>
    </div>
    <g:render template="/find/compare_modal"/>
    <g:render template="/generalTemplate/footer"/>
</div>
<g:render template="/find/searchTheCountryJavaScript"/>
</body>
</html>