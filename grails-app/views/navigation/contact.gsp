<%@ page contentType="text/html;charset=UTF-8" %>
<head>
    <meta name="layout" content="contact"/>
</head>

<body>
<g:render template="/generalTemplate/navbar"/>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header"><g:message code="default.contact.label" />
            </h1>
            <ol class="breadcrumb">
                <li><a href="index.html"><g:message code="default.home.label" /></a>
                </li>
                <li class="active"><g:message code="default.contact.label" /></li>
            </ol>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <h3><g:message code="contact.page.details" /></h3>
            <p>
                <g:message code="contact.page.location" />
            </p>
            <p><i class="fa fa-phone"></i>
                <abbr title="Phone">P</abbr>: </p>
            <p><i class="fa fa-envelope-o"></i>
                <abbr title="Email">E</abbr>: <a href="mailto:buzukag@gmail.com"><g:message code="contact.page.mail" /></a>
            </p>
            <p><i class="fa fa-clock-o"></i>
                <abbr title="Hours">H</abbr>: <g:message code="contact.page.works" /></p>
            <ul class="list-unstyled list-inline list-social-icons">
                <li>
                    <a href="https://www.facebook.com/buzukag" target="_blank"><i class="fa fa-facebook-square fa-2x"></i></a>
                </li>
                <li>
                    <a href="https://www.linkedin.com/in/anastasiya-buzuk-073800116" target="_blank"><i class="fa fa-linkedin-square fa-2x"></i></a>
                </li>
            </ul>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8">
            <h3><g:message code="default.contact.title" /></h3>
            <g:form name="sentMessage" id="contactForm" method="post" url="[action:'sendMail',controller:'mail']">
                <div class="control-group form-group">
                    <div class="controls">
                        <label><span class="glyphicon glyphicon-user" style="color: red"></span> <g:message code="default.contact.fullname" /></label>
                        <g:textField type="text" class="form-control" name="name" id="name" required="required" data-validation-required-message="Please enter your name."/>
                        <p class="help-block"></p>
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="controls">
                        <label><span class="glyphicon glyphicon-phone-alt" style="color: red"></span> <g:message code="default.contact.phone" /></label>
                        <g:textField type="tel" class="form-control" name="phone" id="phone" required="required" data-validation-required-message="Please enter your phone number."/>
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="controls">
                        <label><span class="glyphicon glyphicon-envelope" style="color: red"></span> <g:message code="default.contact.email" /></label>
                        <g:textField type="email" class="form-control" name="email" id="email" required="required" data-validation-required-message="Please enter your email address."/>
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="controls">
                        <label><span class="glyphicon glyphicon-pencil" style="color: red"></span> <g:message code="default.contact.message" /></label>
                        <g:textArea rows="10" cols="100" class="form-control" name="message" required="required" id="message" data-validation-required-message="Please enter your message" maxlength="999" style="resize:none"/>
                    </div>
                </div>
                <div id="required"><span class="glyphicon glyphicon-ok" style="color: red"></span> <strong>Red fields are required!</strong></div>
                <div id="success"></div>
                <button id="send-mail" type="submit" class="btn btn-success" style="margin-top: 5px"><g:message code="button.send" /></button>
            </g:form>
        </div>
    </div>
    <g:render template="/generalTemplate/footer"/>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        $('#send-mail').on('click', function(){
            $('#send-mail').attr('disabled', 'disabled')
        });
    });
</script>
</body>