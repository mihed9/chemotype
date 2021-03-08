<nav class="navbar navbar-default navbar-fixed-top custom-navbar" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/"><g:message code="title.site" /></a>
        </div>
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="/"><span class="glyphicon glyphicon-home"></span> <g:message code="default.home.label" /></a>
                </li>
                <li>
                    <a href="${createLink(controller: "navigation", action: "about")}"><span class="glyphicon glyphicon-cog"></span> <g:message code="button.about" /></a>
                </li>
                <li>
                    <a href="${createLink(controller: "navigation", action: "contact")}"><span class="glyphicon glyphicon-envelope"></span> <g:message code="button.contact" /></a>
                </li>
                <li>
                    <a href="${createLink(controller: "navigation", action: "faq")}"><span class="glyphicon glyphicon-question-sign"></span> <g:message code="button.faq" /></a>
                </li>
                <li>
                    <a href="${createLink(controller: "navigation", action: "partnership")}"><span class="glyphicon glyphicon-user"></span> <g:message code="button.partnership" /></a>
                </li>
                <li>
                    <a href="/#search"><span class="glyphicon glyphicon-search"></span> <g:message code="button.find" /></a>
                </li>
            </ul>
        </div>
    </div>
</nav>