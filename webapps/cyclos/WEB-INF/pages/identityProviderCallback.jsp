<%@ page contentType="text/html; charset=UTF-8" session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<script>
<c:choose><c:when test="${redirectUrl != null}">
// Redirect to the location
location = '${redirectUrl}';
</c:when><c:otherwise>
// The result will be notified via push notification. Just close the pop-up.
window.close();
</c:otherwise></c:choose>
</script>
</head>
</html>