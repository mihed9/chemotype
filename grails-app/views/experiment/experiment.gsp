<%@ page contentType="text/html;charset=UTF-8" %>
<head>
    <meta name="layout" content="experiment"/>
</head>

<body>
<g:render template="/generalTemplate/navbar"/>
<div class="container boxShadow3">
    <div class="row col-md-12 bs-callout bs-callout-danger">
        <p><span><g:message code="experiment.page.description" /></span></p>
    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title"><center><span class="find-text"><b><g:message code="search.page.step1" /></b></span></center></h3>
                </div>
                <div class="panel-body">
                    <select id="familyGenus" class="chosen-family" data-placeholder="Select Your Family">
                        <option value="0"><g:message code="search.page.step1message" /></option>
                    </select>
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
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title"><center><span class="find-text"><b><g:message code="experiment.page.step4" /></b></span></center></h3>
                </div>
                <div class="panel-body">
                    <select id="nameOfCompound" multiple data-placeholder="<g:message code="experiment.page.step4message" />">
                        <option value="0"><g:message code="searchcompound.page.step2message" /></option>
                    </select>
                    <button id="choseNameOfCompound" type="button" class="btn btn-warning btn-custom"><g:message code="button.next" /></button>
                </div>
            </div>
        </div>
        <div class="col-md-8">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title"><center><span class="find-text"><b><g:message code="experiment.page.step5" /></b></span></center></h3>
                </div>
                <div class="panel-body">
                        <div class="row">
                            <div id="choosePercentage" class="col-md-12">
                            </div>
                        </div>
                    <button type="button" class="btn btn-success search btn-custom"><g:message code="button.find" /></button>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="row" style="margin: 1em">
            <table class="table table-bordered">
                <thead>
                <tr style="background-color: #d6e9c6;">
                    <th class="col-md-1">#</th>
                    <th class="col-md-2">Species</th>
                    <th class="col-md-3">Chemotype</th>
                    <th class="col-md-2">Country</th>
                    <th class="col-md-2">Compound</th>
                    <th class="col-md-2">Percentage, %</th>
                </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row">
        <center>
            <a href="${createLink(controller: 'experiment')}">
                <button id="newsearch" class="btn btn-success">New Search</button>
            </a>
        </center>
    </div>
    <g:render template="/generalTemplate/footer"/>
</div>
<g:render template="/experiment/experimentJavaScript"/>
</body>