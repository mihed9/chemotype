<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta id="description" content='Using the search Compound abundance you can obtain the information about the individual chemical compound and its abundance in essential oil composition. This page contains the bottoms which will make the search more effective and easier. After that the results will appear on the screen concerns the properties of the compound and the list of chemoType and species containing the chosen compound.' name='description'/>
    <meta id="keywords" content='compound abundance, IUPAC name, M, essential oil composition, CAS-number, synonyms' name='keywords'/>
    <link rel="shortcut icon" href="/favicon.png" type="image/x-icon">
    <title>Compound search: PlantChemDB</title>
    <script src="${resource(dir: '/libs', file: 'jquery-2.2.3.min.js')}"></script>
    <link rel="stylesheet" href="${resource(dir: 'libs/bootstrap-3.3.6-dist/css', file: 'bootstrap.min.css')}">
    <link rel="stylesheet" href="${resource(dir: 'css/find', file: 'general.css')}">
    <link rel="stylesheet" href="${resource(dir: 'libs/chosen', file: 'chosen.min.css')}">
    <link rel="stylesheet" href="${resource(dir: 'css/theme/modern-business/css/', file: 'modern-business.css')}">
    <link rel="stylesheet" href="${resource(dir: 'css/theme/modern-business/font-awesome/css', file: 'font-awesome.min.css')}">

    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <g:layoutHead/>
</head>

<body>

<g:layoutBody/>
<script src="${resource(dir: 'libs/bootstrap-3.3.6-dist/js', file: 'bootstrap.min.js')}"></script>
<script src="${resource(dir: 'libs/chosen', file: 'chosen.jquery.min.js')}"></script>
<script src="${resource(dir: 'libs/chosen', file: 'chosen.proto.min.js')}"></script>
<script src="${resource(dir: 'libs', file: 'bootstrap-checkbox.js')}"></script>
<script src="${resource(dir: 'libs', file: 'jquery.tinyTips.js')}"></script>
<g:render template="/yandex_google_javascript"/>
</body>
</html>