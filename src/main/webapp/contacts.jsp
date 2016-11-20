<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<fmt:setLocale value="${language}"/>
<fmt:setBundle basename="i18n.UsersBundle"/>
<html>
<head>

    <title>КАРТА</title>

</head>
<body onload="initialize()">

<div class="col-lg-12">
    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d2243.0456086291883!2d49.12374096234441!3d55.79244593987809!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sru!2sru!4v1478081167646"
            class="map"></iframe>
</div>
<div class="col-md-3">
    <address>

        <h2><i class="fa fa-clock-o" aria-hidden="true"></i> Время работы</h2>
        <h3></h3>
        <h2><i class="fa fa-building" aria-hidden="true"></i> <fmt:message key="address"/></h2>
        <h4>Кремлевская 0 корпус 1 3/4</h4>
        <h2><i class="fa fa-fax" aria-hidden="true"> </i><fmt:message key="phone"/></h2>
        <h4>234-35-56</h4>
    </address>
</div>
</body>
</html>
