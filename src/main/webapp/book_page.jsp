<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${language}"/>
<fmt:setBundle basename="i18n.UsersBundle"/>
<html>
<head>
    <link href="css/jumboron.css" rel="stylesheet">
    <title></title>
</head>
<body>
<div class="col-md-5"><img src="images/${book.id}.jpg" class="img img-responsive"><a class="link-content" href="library">К библиотеке</a></div>
<div class="col-md-5">
    <dl class="dl-horizontal item-content">
        <dt><fmt:message key="book.characteristic.name"/>: </dt>
        <dd>${book.name}</dd>
        <dt><fmt:message key="book.characteristic.author"/>: </dt>
        <dd>${book.author}</dd>
        <dt><fmt:message key="book.characteristic.gener"/>: </dt>
        <dd>${book.gener}</dd>
        <dt><fmt:message key="book.characteristic.edition"/>: </dt>
        <dd>${book.edition}</dd>
        <dt><fmt:message key="book.characteristic.pages"/>: </dt>
        <dd>${book.pages}</dd>
        <dt><fmt:message key="book.characteristic.weight"/>: </dt>
        <dd>${book.weight} г.</dd>
        <dt><fmt:message key="book.characteristic.description"/>: </dt>
        <dd>${book.description}</dd>
    </dl>
</div>
<div class="col-md-2 item-content">
    <h2>${book.price} рублей</h2>
</div>
</body>
</html>
