<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta id="description" content='On this page you can find the information about the compound ${compound?.compound} in essential oil composition. You can find the formula of ${compound?.compound} and some pieces of its physical properties. Also you can find the information about the pharmacology of this essential oil component ${compound?.compound}, which could be very useful for scientists from different field.' name='description'/>
    <meta id="keywords" content='${compound?.compound}, pharmacology ${compound?.compound}, physical properties ${compound?.compound}, CAS-Number, Brutto ${compound?.compound}, M  ${compound?.compound}, Composition ${compound?.compound}, formula ${compound?.compound}, IUPAC ${compound?.compound}, synonyms ${compound?.compound}' name='keywords'/>
    <link rel="shortcut icon" href="/favicon.png" type="image/x-icon">
    <title>Info compound: ${compound?.compound}</title>
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