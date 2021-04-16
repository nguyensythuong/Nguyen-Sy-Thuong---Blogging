<%-- 
    Document   : Overview
    Created on : 16-Jan-2021, 11:58:25
    Author     : Win 10
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/overview.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <jsp:include page="Header.jsp"/>
            <div class="content">
                <div class="left">
                    <div class="page"><h6>Overview-My Blog</h6></div>
                    <c:forEach items="${listM}" var="o">
                        <div class="form">

                            <div class="month">
                                <div class="month_title">${o.month} ${o.year}</div>
                                <div class="month_date">Date</div>
                            </div>
                               
                            <div class="month_blog">
                                <c:forEach items="${o.listBlog}" var="b">
                                <div class="blogger">
                                    <div class="blog_title"><a href="BlogControl?id=${b.id}">${b.name}</a></div>
                                    <div class="blog_date">${b.date}</div>
                                </div>
                                </c:forEach>
                            </div>
                            
                        </div>
                    </c:forEach>
                    <div class="paging">
                        <c:forEach begin="1" end="${end}" var="i">
                            <a href="OverviewControl?index=${i}" class="${i==indexPage?"active":""}" >
                                ${i}
                            </a>
                        </c:forEach>
                    </div>
                </div>
                <jsp:include page="Right.jsp"/>
            </div>
            <jsp:include page="Footer.jsp"/>
        </div>
    </body>
</html>
