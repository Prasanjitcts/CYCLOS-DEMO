<%@ page contentType="text/html; charset=UTF-8" session="false" %>
<!doctype html>
<html>


<head>
<jsp:include page="root-path.jsp" flush="false" />

<script>rootPath += '/consent/';</script>
  
<meta charset="utf-8">
  
<meta name="viewport" content="width=device-width, initial-scale=1">
  

<script>document.write('<base href="' + rootPath + '">');</script>
  
<link id="shortcutIcon" rel="icon"
    href="data:image/png;base64,iVBORw0KGgo=">
  
<script>
    var apiRoot = getRootPath() + "/consent";
    var data = ${data == null ? 'null' : data};
    var translations = ${translations == null ? 'null' : translations};
  </script>


<script>includeStyle("styles.32a7cfdb1e8f716318d6.css?key=${cacheKey}");</script>
</head>

<body>
  <app-root></app-root>

<script src="runtime-es2015.1eba213af0b233498d9d.js" type="module"></script>
<script src="runtime-es5.1eba213af0b233498d9d.js" nomodule defer></script>
<script src="polyfills-es5.049f620af8c864cf4d88.js" nomodule defer></script>
<script src="polyfills-es2015.f2c5ab749249a66bdf26.js" type="module"></script>
<script src="main-es2015.b8e1f4f27e691b1fed99.js" type="module"></script>
<script src="main-es5.b8e1f4f27e691b1fed99.js" nomodule defer></script>
</body>

</html>
