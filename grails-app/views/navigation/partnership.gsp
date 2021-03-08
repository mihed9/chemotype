<head>
    <meta name="layout" content="partnership"/>
</head>
<body>
<g:render template="/generalTemplate/navbar"/>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header"><g:message code="partnership.title" />
            </h1>
            <ol class="breadcrumb">
                <li><a href="/"><g:message code="default.home.label" /></a></li>
                <li class="active"><g:message code="partnership.label" /></li>
            </ol>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <img class="img-responsive" src="/images/general/partnership.jpg" alt="">
        </div>
        <div class="col-md-6">
            <h2><g:message code="partnership.title" /></h2>
            <p class="text"><g:message code="partnership.description" /></p>
        </div>
    </div>
    <g:render template="/generalTemplate/footer"/>
</div>
</body>