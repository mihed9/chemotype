<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta id="description" content='On this page you can find the detailed information about the observed chemoType ${chemoType.nameChemotype} of the chosen species ${chemoType.species}: about the region where the described chemoType ${chemoType.nameChemotype} of ${chemoType.species} was found, the condition of analysis and references of the article. Also you can find the essential oil composition in details.' name='description'/>
    <meta id="keywords" content='chemoType ${chemoType.nameChemotype}, species ${chemoType.species}, country ${chemoType.species}, region ${chemoType.species}, part of the plant ${chemoType.species}, GC analysis ${chemoType.species}, GC/MS analysis ${chemoType.species}, identification ${chemoType.nameChemotype}' name='keywords'/>
    <link rel="shortcut icon" href="/favicon.png" type="image/x-icon">
    <title>Info chemoType: ${chemoType.nameChemotype}</title>
    <script src="${resource(dir: '/libs', file: 'jquery-2.2.3.min.js')}"></script>
    <link rel="stylesheet" href="${resource(dir: 'libs/bootstrap-3.3.6-dist/css', file: 'bootstrap.min.css')}">
    <link rel="stylesheet" href="${resource(dir: 'css/find', file: 'general.css')}">
    <link rel="stylesheet" href="${resource(dir: 'css/theme/modern-business/css/', file: 'modern-business.css')}">
    <link rel="stylesheet" href="${resource(dir: 'css/theme/modern-business/font-awesome/css', file: 'font-awesome.min.css')}">

        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <g:layoutHead/>
</head>

<body>

<g:layoutBody/>
<script src="${resource(dir: 'libs/bootstrap-3.3.6-dist/js', file: 'bootstrap.min.js')}"></script>
<g:render template="/yandex_google_javascript"/>
</body>
</html>