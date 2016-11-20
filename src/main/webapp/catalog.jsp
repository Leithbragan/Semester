<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${language}"/>
<fmt:setBundle basename="i18n.UsersBundle"/>
<html>
<head>
    <title></title>
    <link href="css/jumboron.css" rel="stylesheet">
</head>
<body>

<div class="tabbable"> <!-- Only required for left/right tabs -->
    <ul class="nav nav-tabs">
        <li class="active"><a href="#tab1" data-toggle="tab"></a></li>
        <li><a href="#tab2" data-toggle="tab"></a></li>
        <li><a href="#tab3" data-toggle="tab"></a></li>
    </ul>
    <br>
    <div class="alert alert-success notify" id="notify_success" name="notify_success">${notify_success}</div>
    <div class="alert alert-info notify" id="notify_info" name="notify_info">${notify_info}</div>
    <div class="tab-content">
        <div class="tab-pane active" id="tab1">
            <c:forEach var="goods" items="${goods}">
                <div class="col-md-4 products">
                    <div class="row">
                        <div class="product">
                            <div class="product-img">
                                <strong><a href="/vazilon/item?id=${goods.id}"></a></strong>
                            </div>
                            <div class="product-block">
                                <p class="product-title">
                                    <a href="/vazilon/item?id=${goods.id}">${goods.name}</a>
                                </p>
                                <p class="product-price"> <button id="${goods.id}" type="submit" class="glyphicon glyphicon-shopping-cart"></button></p>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="tab-pane" id="tab2">
            <p>Привет, я 2-я секция.</p>
        </div>
        <div class="tab-pane" id="tab3">
            <p>3-я секция.</p>
        </div>
    </div>
</div>

<script>
    $('button').click(function (event) {
         $('#notify_success').load('add?id=' + event.target.id);
    })
</script>
<%--
<div class="pagination pagination-centered">
    <ul>
        <li><a href="#">Prev</a></li>
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">Next</a></li>
    </ul>
</div>--%>
</body>
</html>
