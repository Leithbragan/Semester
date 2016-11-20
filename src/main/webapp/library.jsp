<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${language}"/>
<fmt:setBundle basename="i18n.UsersBundle"/>
<html>
<head>
    <link href="css/jumboron.css" rel="stylesheet">
    <title>Title</title>
</head>
<body>
<div class="container-fluid">
    <div class="nav navbar-nav">
        <ul class="nav nav-tabs nav-justified">
            <li><a class="link-content" href="#all_books" data-toggle="tab"><fmt:message key="book.gener.all"/></a></li>
            <li><a class="link-content" href="#Комедия" data-toggle="tab"><fmt:message key="book.gener.comedy"/></a>
            </li>
            <li><a class="link-content" href="#Фантастика" data-toggle="tab"><fmt:message
                    key="book.gener.fantastic"/></a></li>
            <li><a class="link-content" href="#Роман" data-toggle="tab"><fmt:message key="book.gener.novel"/></a></li>
            <li><a class="link-content" href="#Антиутопия" data-toggle="tab"><fmt:message
                    key="book.gener.dystopia"/></a></li>
            <li><a class="link-content" href="#Этногенез" data-toggle="tab"><fmt:message key="book.gener.etno"/></a>
            </li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane active" id="all_books">
                <div class="text-content"><h1 class="text-content"><fmt:message key="book.gener.all"/></h1></div>
                <div>
                    <table class="table table-condensed table table-bordered">
                        <c:forEach var="book" items="${book}">
                            <tr>
                                <td class="image-content"><img src="images/${book.id}.jpg" class="img img-responsive">
                                </td>
                                <td class="text-content"><a class="link-content"
                                                            href="/vazilon/book_page?id=${book.id}">${book.name}</a>
                                    <h5>${book.description}</h5></td>
                                <div width="200px" class="">
                                    <td class="text-content"> ${book.author}</td>
                                </div>
                                <td class="text-content"><a class="link-content" href="#${book.gener}"
                                                            data-toggle="tab">${book.gener}</a></td>
                                <td class="text-content">${book.price} рублей</td>
                                <td>
                                    <button class="btn btn-default" id="${book.id}" type="submit"
                                            onclick="append(${book.id})"><fmt:message key="button.buy"/></button>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
            <div class="tab-pane fade" id="Комедия">
                <div class="text-content"><h1><fmt:message key="book.gener.comedy"/></h1></div>
                <div>
                    <table class="table table-condensed table table-bordered">
                        <c:forEach var="book" items="${book}">
                            <c:set var="gener" value="Комедия"/>
                            <c:set var="generDB" value="${book.gener}"/>
                            <c:if test="${gener == generDB}">
                                <tr>
                                    <td class="image-content"><img src="images/${book.id}.jpg"
                                                                   class="img img-responsive"></td>
                                    <td class="text-content"><a class="link-content"
                                                                href="/vazilon/book_page?id=${book.id}">${book.name}</a>
                                        <h5>${book.description}</h5></td>
                                    <td class="text-content">${book.author}</td>
                                    <td class="text-content">${book.price}рублей</td>
                                    <td><a class="btn btn-default" href="#" type="submit"><i
                                            class="icon-search icon-time"></i>Купить</a><button class="btn btn-default" id="${book.id}" type="submit"
                                                                                                onclick="append(${book.id})"><fmt:message key="button.buy"/></button></td>
                                </tr>
                            </c:if>
                        </c:forEach>
                    </table>
                </div>
            </div>
            <div class="tab-pane fade" id="Фантастика">
                <div class="text-content"><h1><fmt:message key="book.gener.fantastic"/></h1></div>
                <div>
                    <table class="table table-condensed table table-bordered">
                        <c:forEach var="book" items="${book}">
                            <c:set var="gener" value="Фантастика"/>
                            <c:set var="generDB" value="${book.gener}"/>
                            <c:if test="${gener == generDB}">
                                <tr>
                                    <td class="image-content"><img src="images/${book.id}.jpg"
                                                                   class="img img-responsive"></td>
                                    <td class="text-content"><a class="link-content"
                                                                href="/vazilon/book_page?id=${book.id}">${book.name}</a>
                                        <h5>${book.description}</h5></td>
                                    <td class="text-content">${book.author}"</td>
                                    <td class="text-content">${book.price}рублей</td>
                                    <td><button class="btn btn-default" id="${book.id}" type="submit"
                                                onclick="append(${book.id})"><fmt:message key="button.buy"/></button></td>
                                </tr>
                            </c:if>
                        </c:forEach>
                    </table>
                </div>
            </div>
            <div class="tab-pane fade" id="Роман">
                <div class="text-content"><h1><fmt:message key="book.gener.novel"/></h1></div>
                <div>
                    <table class="table table-condensed table table-bordered">
                        <c:forEach var="book" items="${book}">
                            <c:set var="gener" value="Роман"/>
                            <c:set var="generDB" value="${book.gener}"/>
                            <c:if test="${gener == generDB}">
                                <tr>
                                    <td class="image-content"><img src="images/${book.id}.jpg"
                                                                   class="img img-responsive"></td>
                                    <td class="text-content"><a class="link-content"
                                                                href="/vazilon/book_page?id=${book.id}">${book.name}</a>
                                        <h5>${book.description}</h5></td>
                                    <td class="text-content">${book.author}</td>
                                    <td class="text-content">${book.price} рублей</td>
                                    <td><button class="btn btn-default" id="${book.id}" type="submit"
                                                onclick="append(${book.id})"><fmt:message key="button.buy"/></button></td>
                                </tr>
                            </c:if>
                        </c:forEach>
                    </table>
                </div>
            </div>
            <div class="tab-pane fade" id="Антиутопия">
                <div class="text-content"><h1><fmt:message key="book.gener.dystopia"/></h1></div>
                <div>
                    <table class="table table-condensed table table-bordered">
                        <c:forEach var="book" items="${book}">
                            <c:set var="gener" value="Антиутопия"/>
                            <c:set var="generDB" value="${book.gener}"/>
                            <c:if test="${gener == generDB}">
                                <tr>
                                    <td class="image-content"><img src="images/${book.id}.jpg"
                                                                   class="img img-responsive"></td>
                                    <td class="text-content"><a class="link-content"
                                                                href="/vazilon/book_page?id=${book.id}">${book.name}</a>
                                        <h5>${book.description}</h5></td>
                                    <td class="text-content">${book.author}</td>
                                    <td class="text-content">${book.price} рублей</td>
                                    <td><button class="btn btn-default" id="${book.id}" type="submit"
                                                onclick="append(${book.id})"><fmt:message key="button.buy"/></button></td>
                                </tr>
                            </c:if>
                        </c:forEach>
                    </table>
                </div>
            </div>
            <div class="tab-pane fade" id="Этногенез">
                <div class="text-content"><h1><fmt:message key="book.gener.etno"/></h1></div>
                <div>
                    <table class="table table-condensed table table-bordered">
                        <c:forEach var="book" items="${book}">
                            <c:set var="gener" value="Этногенез"/>
                            <c:set var="generDB" value="${book.gener}"/>
                            <c:if test="${gener == generDB}">
                                <tr>
                                    <td class="image-content"><img src="images/${book.id}.jpg"
                                                                   class="img img-responsive"></td>
                                    <td class="text-content"><a class="link-content"
                                                                href="/vazilon/book_page?id=${book.id}">${book.name}</a>
                                        <h5>${book.description}</h5></td>
                                    <td class="text-content">${book.author}</td>
                                    <td class="text-content">${book.price} рублей</td>
                                    <td><button class="btn btn-default" id="${book.id}" type="submit"
                                                onclick="append(${book.id})"><fmt:message key="button.buy"/></button></td>
                                </tr>
                            </c:if>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function append(value) {
        $.ajax({
            url: 'append?id=' + value,
            success: function (data) {
                alert(data);
            }
        });
    }
</script>
</body>
</html>
