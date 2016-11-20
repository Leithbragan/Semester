<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${language}"/>
<fmt:setBundle basename="i18n.UsersBundle"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table class="table table-condensed table table-bordered">
    <c:forEach var="purchases" items="${purchases}">

        <tr>
            <td class="image-content"><img src="images/${purchases.id}.jpg"></td>
            <td class="text-content">${purchases.name}</td>
            <td class="text-content">${purchases.author}</td>
            <td class="text-content">${purchases.price} рублей</td>
        </tr>

    </c:forEach>
</table>
</body>
</html>
