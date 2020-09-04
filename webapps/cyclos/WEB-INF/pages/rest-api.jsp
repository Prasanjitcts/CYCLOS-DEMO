<%@ page contentType="text/html; charset=UTF-8" session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html>
<html language="en">
<head>
    <title>Cyclos ${cyclosVersion} REST API</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <jsp:include page="root-path.jsp" flush="false" />

    <link id="shortcutIconLink" rel="shortcut icon" href="${initializationData.shortcutIconUrl}">
    <link href='https://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css' />
    <script
      src="https://code.jquery.com/jquery-3.3.1.min.js"
      integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
      crossorigin="anonymous"></script>
  
    <script src="https://cdnjs.cloudflare.com/ajax/libs/swagger-ui/3.24.2/swagger-ui-bundle.js"
        integrity="sha256-vSnFNvuQhNviHFS0M3EXj1LHCYdscvEdVmLIiDDZVhQ=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/swagger-ui/3.24.2/swagger-ui.css"
        integrity="sha256-Dw3/dQaA/3PKkN2b3agvmpPhItQwRBufnIRmCYo2vo0=" crossorigin="anonymous" />
      
    <style>
        .swagger-ui .info {
            margin: 0 !important;
        }
        .scheme-container {
            box-shadow: none !important;
            padding: 0 20px 30px 20px !important;
            margin: 0 !important;
            border-bottom: 1px solid rgba(59, 65, 81, 0.3) !important;
        }
        .scheme-container .schemes.wrapper {
            padding: 0 !important;
        }
        .loading-container {
            display: flex !important;
            justify-content: center !important;
            align-items: center !important;
            position: fixed !important;
            width: 100% !important;
            height: 100% !important;
            top: 0 !important;
            left: 0 !important;
            background-color: rgba(255, 255, 255, 0.5) !important;
        }
        .loading-container .loading::before {
            background-color: white !important;
        }
        .table.model {
            margin: 10px 0 !important;
        }
        .main > a, pre.errors-wrapper, section.schemes > div:first-child {
            display: none !important;
        }
        .information-container .description {
            text-align: justify !important;
        }
        .auth-container form {
            display: flex !important;
            position: relative !important;
        }
        .auth-btn-wrapper {
            display: flex !important;
            max-height: 60px !important;
            padding-left: 30px !important;
            padding-bottom: 0 !important;
            position: absolute !important;
            bottom: 6px;
            right: 0;
        }
        .auth-btn-wrapper button {
            margin-right: 10px !important;
        }
        .modal-ux-content {
            max-height: 90vh !important;
        }
        div.auth-wrapper::before {
            content: "Below is a list of all available REST URLs handled by the API. Each one has a 'Try it out' button that can run the operation live. After clicking it, each operation parameter will allow you to set its value, then click on the large 'Execute' button. If you are going to perform any of these operations, use the 'Authorize' button to login, and set user and password.";
            font-size: 14px;
            margin-right: 40px;
            text-align: justify;
        }
        .btn.authorize {
            display: inline-block !important;
            white-space: nowrap !important;
        }
        .btn.authorize svg {
            transform: translateX(-12px);
        }
        table.model > tbody > tr:first-child > td {
            padding-top: 10px !important;
        }
        table.model {
            margin-bottom: 10px !important;
        }
        .opblock-tag a {
            display: inline-block !important;
            min-width: 240px !important;
        }
        .swagger-ui .markdown code, .swagger-ui .renderedMarkdown code {
            padding: 0px 2px !important;
        }
    </style>
    <script>
        $(function() {
            window.swaggerUi = SwaggerUIBundle({
                url: "${yamlDescriptor}",
                dom_id: '#swaggerUi',
                tagsSorter: 'alpha',
                docExpansion: 'none'
            });            
        });
    </script>
</head>
<body id="swaggerUi">
</body>
</html>
