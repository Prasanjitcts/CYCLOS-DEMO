<%@ page contentType="text/html; charset=UTF-8" session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="basicStyle.html" />
        <jsp:include page="root-path.jsp" />
    </head>
    <body>
        <c:set var="browserNotSupportedJS"><spring:escapeBody javaScriptEscape="true">${browserNotSupported}</spring:escapeBody></c:set>
        <script>
            if (localStorage) {
                localStorage["Session-Prefix"] = "${sessionPrefix}";
                <c:choose><c:when test="${returnTo != null}">
                window.location = rootPath + "#" + encodeURIComponent("${returnTo}");
                </c:when><c:otherwise>
                window.location = rootPath;
                </c:otherwise></c:choose>
            } else {
                document.body.innerHTML = "<div id='browserNotSupported'><div id='browserNotSupportedFrame'>${browserNotSupportedJS}</div></div>";
            }
        </script>
        <noscript>
            <div id='browserNotSupported'><div id='browserNotSupportedFrame'>${browserNotSupported}</div></div>
        </noscript>
    </body>
</html>
