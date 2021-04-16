<%-- 
    Document   : BlogDetail
    Created on : 17-Jan-2021, 14:40:29
    Author     : Win 10
--%>

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
                    <div class="perblog">
                        
                        <div class="per_icon">
                            <img src="images/${blog.icon}" alt=""/>
                        </div>
                        <div class="per_right">
                            <div class="per_name">
                                <a href="#">${blog.name}</a>
                            </div>
                            <div class="per_date">
                                ${blog.date}
                            </div>
                            <div class="per_picture">
                                <img src="images/${blog.picture}" alt=""/>
                            </div>
                            <div class="per_content">
                                ${blog.detail}
                            </div>
                            <div class="per_italic">
                                ${blog.italic}
                            </div>
                            <div class="per_bigpic">
                                <img src="images/${blog.bigPicture}" alt=""/>
                            </div>
                        </div>
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
