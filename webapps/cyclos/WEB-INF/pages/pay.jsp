<%@ page contentType="text/html; charset=UTF-8" session="false" %>
<!doctype html>
<html>


<head>
<jsp:include page="root-path.jsp" flush="false" />
<script>rootPath += '/pay/';</script>
  
<meta charset="utf-8">
  
<meta name="viewport" content="width=device-width, initial-scale=1">
  
<script>document.write('<base href="' + rootPath + '">');</script>
  
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
    rel="stylesheet">
  
<link
    href="https://fonts.googleapis.com/css?family=Roboto:400,500&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
    rel="stylesheet">
  
<link id="pageIcon" rel="icon" href="data:image/png;base64,iVBORw0KGgo=">
  <script>
    var apiRoot = getRootPath() + "/api";
    var dataForUi = ${dataForUi == null ? 'null' : dataForUi};
    var translations = ${translations == null ? 'null' : translations};
    var ticket = ${ticket == null ? 'null' : ticket};
    var easyInvoice = ${easyInvoice == null ? 'null' : easyInvoice};
    var error = ${error == null ? 'null' : error};

    // Returns if the device browser is Android based
    function isAndroid() {
      var ua = navigator.userAgent.toLowerCase(); return ua.indexOf("android") > -1;
    }
    // Returns if the device browser is IOS based
    function isIos() {
      var ua = navigator.userAgent.toLowerCase(); return ua.indexOf("ipad") > -1 || ua.indexOf("iphone") > -1 || ua.indexOf("ipod") > -1;
    }
    var isAndroid = isAndroid();
    var isIos = isIos();
    var isMobile = isAndroid || isIos;
  </script>

<script>includeStyle("styles.04690b53b0737001a00c.css?key=${cacheKey}");</script>
</head>

<body>
  <app-root></app-root>
<script src="runtime-es2015.1eba213af0b233498d9d.js" type="module"></script><script src="runtime-es5.1eba213af0b233498d9d.js" nomodule defer></script><script src="polyfills-es5.9238b9806b55cb4b078a.js" nomodule defer></script><script src="polyfills-es2015.511273b9308899124a57.js" type="module"></script><script src="scripts.036706e62fdf599de5f9.js" defer></script><script src="main-es2015.c5b7978e5aadba47f1dc.js" type="module"></script><script src="main-es5.c5b7978e5aadba47f1dc.js" nomodule defer></script>
</body>

</html>
