<head>
    <meta name="layout" content="compoundSearch"/>
</head>
<body>
<g:render template="/generalTemplate/navbar"/>
<div class="container boxShadow3">
    <div class="row col-md-12 bs-callout bs-callout-danger">
        <p><span><g:message code="searchcompound.page.description" /></span></p>
    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title"><center><span class="find-text"><b><g:message code="searchcompound.page.step1" /></b></span></center></h3>
                </div>
                <div class="panel-body">
                    <select id="casNumber" data-placeholder="<g:message code="searchcompound.page.step1message" />">
                        <option value="0"><g:message code="searchcompound.page.step1message" /></option>
                    </select>
                    <button id="choseCasNumber" type="button" class="btn btn-success btn-custom"><g:message code="button.find" /></button>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title"><center><span class="find-text"><b><g:message code="searchcompound.page.step2" /></b></span></center></h3>
                </div>
                <div class="panel-body">
                    <select id="nameOfCompound" data-placeholder="<g:message code="searchcompound.page.step2message" />">
                        <option value="0"><g:message code="searchcompound.page.step2message" /></option>
                    </select>
                    <button id="choseNameOfCompound" type="button" class="btn btn-success btn-custom"><g:message code="button.find" /></button>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title"><center><span class="find-text"><b><g:message code="searchcompound.page.step3" /></b></span></center></h3>
                </div>
                <div class="panel-body">
                    <select id="iupacName" data-placeholder="<g:message code="searchcompound.page.step3message" />">
                        <option value="0"><g:message code="searchcompound.page.step3message" /></option>
                    </select>
                    <button id="choseIupacName" type="button" class="btn btn-success btn-custom"><g:message code="button.find" /></button>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <center>
            <a href="${createLink(controller: 'compounds')}">
                <button id="newsearch" class="btn btn-success">New Search</button>
            </a>
        </center>
    </div>
    %{--<div class="row col-md-12">--}%
        %{--<div class="row boxShadow5">--}%
            %{--<div class="col-md-4" style="padding-left: 10%; padding-top: 4%"><span id="imgformula"><img src="/images/compoundImg/${compound?.fileName}"></span></div>--}%
            %{--<div class="col-md-8">--}%
                %{--<h4><center><span id="compound"></span></center></h4><br>--}%
                %{--<div class="row">--}%
                    %{--<div class="col-md-3"><b><g:message code="component.info.cas" /></b></div>--}%
                    %{--<div class="col-md-7"><span id="cas"></span></div>--}%
                %{--</div>--}%
                %{--<div class="row">--}%
                    %{--<div class="col-md-3"><b><g:message code="component.info.iupac" /></b></div>--}%
                    %{--<div class="col-md-7"><span id="iupac"></span></div>--}%
                %{--</div>--}%
                %{--<div class="row">--}%
                    %{--<div class="col-md-3"><b><g:message code="component.info.synonyms" /></b></div>--}%
                    %{--<div class="col-md-7">--}%
                        %{--<span id="synonims"></span>--}%
                    %{--</div>--}%
                %{--</div>--}%
                %{--<div class="row">--}%
                    %{--<div class="col-md-3"><b><g:message code="component.info.formula" /></b></div>--}%
                    %{--<div class="col-md-7"><span id="brutto"></span></div>--}%
                %{--</div>--}%
                %{--<div class="row">--}%
                    %{--<div class="col-md-3"><b><g:message code="component.info.moll" /></b></div>--}%
                    %{--<div class="col-md-7"><span id="moll"></span></div>--}%
                %{--</div>--}%
                %{--<div class="row">--}%
                    %{--<div class="col-md-3"><b><g:message code="component.info.composition" /></b></div>--}%
                    %{--<div class="col-md-7"><span id="composition"></span></div>--}%
                %{--</div>--}%
            %{--</div>--}%
        %{--</div>--}%
        %{--<div class="row boxShadow5">--}%
            %{--<center><h4><g:message code="component.info.general.defenition" /></h4></center><br>--}%
            %{--<div><span id="defenition"></span></div>--}%
        %{--</div>--}%
        %{--<div class="row boxShadow5">--}%
            %{--<center><h4><g:message code="component.info.physical" /></h4></center><br>--}%
            %{--<div class="row">--}%
                %{--<div class="col-md-12">--}%
                    %{--<div class="row">--}%
                    %{--<div class="col-md-1"><b><g:message code="component.info.state" /></b></div>--}%
                    %{--<div class="col-md-11"><span id="state"></span> (<span id="stateNote"></span>)</div>--}%
                    %{--</div>--}%
                %{--</div>--}%
            %{--</div>--}%
            %{--<div class="row">--}%
                %{--<div class="col-md-12">--}%
                    %{--<div class="row">--}%
                    %{--<div class="col-md-1"><b><g:message code="component.info.tmelt" />:</b></div>--}%
                    %{--<div class="col-md-11"><span id="tmelt"></span></div>--}%
                    %{--</div>--}%
                    %{--<div class="row">--}%
                    %{--<div class="col-md-1"><b><g:message code="component.info.tboil" />:</b></div>--}%
                    %{--<div class="col-md-11"><span id="tboil"></span></div>--}%
                    %{--</div>--}%
                    %{--<div class="row">--}%
                    %{--<div class="col-md-1"><b><g:message code="component.info.tflush" />:</b></div>--}%
                    %{--<div class="col-md-11"><span id="tflash"></span></div>--}%
                    %{--</div>--}%
                %{--</div>--}%
            %{--</div>--}%
            %{--<div class="row">--}%
                %{--<div class="col-md-12">--}%
                    %{--<div class="row">--}%
                    %{--<div class="col-md-1"><b><g:message code="component.info.solublity" /></b></div>--}%
                    %{--<div class="col-md-11"><span id="solubility"></span></div>--}%
                    %{--</div>--}%
                %{--</div>--}%
            %{--</div>--}%
        %{--</div>--}%
        %{--<div class="row boxShadow5">--}%
            %{--<center><h4><g:message code="component.info.pharmacology" /></h4></center><br>--}%
            %{--<div name="pharmacology"><span id="pharmacology"></span></div>--}%
        %{--</div>--}%
    %{--</div>--}%
    %{--<div class="row"></div>--}%
    <g:render template="/generalTemplate/footer"/>
</div>
<g:render template="/compounds/compoundSearchJavaScript"/>
</body>