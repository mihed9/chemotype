<%@ page contentType="text/html;charset=UTF-8" %>
<head>
    <meta name="layout" content="about"/>
</head>

<body>
<g:render template="/generalTemplate/navbar"/>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header"><g:message code="default.about.label" />
            </h1>
            <ol class="breadcrumb">
                <li><a href="/"><g:message code="default.home.label" /></a>
                </li>
                <li class="active"><g:message code="default.about.label" /></li>
            </ol>
        </div>
    </div>
    <div class="row">
        <div align="center" class="embed-responsive embed-responsive-16by9 col-md-12">
            <video autoplay controls class="embed-responsive-item">
                <source src="/video/chemoType.mp4" type="video/mp4">
            </video>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            %{--<h2><g:message code="about.title" /></h2>--}%
            <p class="text"><g:message code="about.description" /></p>
            </p>
        </div>
    </div>
    %{--<div class="row">--}%
        %{--<div class="col-lg-12">--}%
            %{--<h2 class="page-header">Our Team</h2>--}%
        %{--</div>--}%
        %{--<div class="col-md-4 text-center">--}%
            %{--<div class="thumbnail">--}%
                %{--<img class="img-responsive" src="/images/general/buzuk.jpg" alt="">--}%
                %{--<div class="caption">--}%
                    %{--<h3><g:message code="profile.buzuk.fullname" /><br>--}%
                        %{--<small><g:message code="profile.buzuk.jobtitle" /></small>--}%
                    %{--</h3>--}%
                    %{--<p><g:message code="profile.buzuk.description" /></p>--}%
                    %{--<ul class="list-inline">--}%
                        %{--<li><a href="https://www.facebook.com/buzukag" target="_blank"><i class="fa fa-2x fa-facebook-square"></i></a>--}%
                        %{--</li>--}%
                        %{--<li><a href="https://www.linkedin.com/in/anastasiya-buzuk-073800116" target="_blank"><i class="fa fa-2x fa-linkedin-square"></i></a>--}%
                        %{--<li><a href="mailto:buzukag@gmail.com" target="_blank"><i class="fa fa-2x fa-envelope"></i></a>--}%
                    %{--</ul>--}%
                %{--</div>--}%
            %{--</div>--}%
        %{--</div>--}%
        %{--<div class="col-md-4 text-center">--}%
            %{--<div class="thumbnail">--}%
                %{--<img class="img-responsive" src="/images/general/buzukg.jpg" alt="">--}%
                %{--<div class="caption">--}%
                    %{--<h3><g:message code="profile.buzukg.fullname" /><br>--}%
                        %{--<small><g:message code="profile.buzukg.jobtitle" /></small>--}%
                    %{--</h3>--}%
                    %{--<p><g:message code="profile.buzukg.description" /></p>--}%
                    %{--<ul class="list-inline">--}%
                        %{--<li><a href="#" target="_blank"><i class="fa fa-2x fa-facebook-square"></i></a>--}%
                        %{--</li>--}%
                        %{--<li><a href="#" target="_blank"><i class="fa fa-2x fa-linkedin-square"></i></a>--}%
                        %{--</li>--}%
                        %{--<li><a href="mailto:buzuk@tut.by" target="_blank"><i class="fa fa-2x fa-envelope"></i></a>--}%
                    %{--</ul>--}%
                %{--</div>--}%
            %{--</div>--}%
        %{--</div>--}%
        %{--<div class="col-md-4 text-center">--}%
            %{--<div class="thumbnail">--}%
                %{--<img class="img-responsive" src="/images/general/romankev.jpg" alt="">--}%
                %{--<div class="caption">--}%
                    %{--<h3><g:message code="profile.romankevich.fullname" /><br>--}%
                        %{--<small><g:message code="profile.romankevich.jobtitle" /></small>--}%
                    %{--</h3>--}%
                    %{--<p><g:message code="profile.romankevich.description" /></p>--}%
                    %{--<ul class="list-inline">--}%
                        %{--<li><a href="https://www.facebook.com/romankevich.mihail" target="_blank"><i class="fa fa-2x fa-facebook-square"></i></a>--}%
                        %{--</li>--}%
                        %{--<li><a href="#" target="_blank"><i class="fa fa-2x fa-linkedin-square"></i></a>--}%
                        %{--<li><a href="mailto:koldunm@gmail.com" target="_blank"><i class="fa fa-2x fa-envelope"></i></a>--}%
                    %{--</ul>--}%
                %{--</div>--}%
            %{--</div>--}%
        %{--</div>--}%
%{--</div>--}%
    <g:render template="/generalTemplate/footer"/>
</div>
</body>