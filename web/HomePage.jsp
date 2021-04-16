<%-- 
    Document   : MyBlog
    Created on : 15-Jan-2021, 16:57:11
    Author     : Win 10
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <jsp:include page="Header.jsp"/>
            <div class="content">
                <div class="left">
                    <div class="page"><h6>My blog</h6></div>
                    <div class="top3">
                        <c:forEach items="${listB}" var="o">
                        <div class="perblog">
                            <div class="per_icon">
                                <img src="images/${o.icon}" alt=""/>
                            </div>
                            <div class="per_right">
                                <div class="per_name">
                                    <a href="BlogControl?id=${o.id}">${o.name}</a>
                                </div>
                                <div class="per_date">
                                    ${o.date}
                                </div>
                                <div class="per_picture">
                                    <img src="images/${o.picture}" alt=""/>
                                </div>
                                <div class="per_content">
                                   ${o.detail}
                                </div>
                                <div class="per_italic">
                                   ${o.italic}
                                </div>
                                <div class="per_bigpic">
                                   <img src="images/${o.bigPicture}" alt=""/>
                                </div>
                                <div class="view">
                                    View:1235
                                </div>
                            </div>
                        </div>
                        </c:forEach>


                    </div>
                    <div class="overview">
                        <a href="OverviewControl">Overview</a>
                    </div>
                </div>
                <jsp:include page="Right.jsp"/>

            </div>
            <jsp:include page="Footer.jsp"/>
        </div>
    </body>
</html>
