<%-- 
    Document   : Header
    Created on : 15-Jan-2021, 16:42:21
    Author     : Win 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/head.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="header">
            <div class="title">Blogging About My Life</div>
            <div class="subtitle">Welcome to my blog</div>
        </div>
        <div class="menu">
            <ul class="nav">
                <li><a class="${activeHome}" href="HomeControl">My Blog</a></li>
                <li><a class="${activeAbout}" href="AboutControl">About Me</a></li>
            </ul>
        </div>
    </body>
</html>
