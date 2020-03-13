<%--
  Created by IntelliJ IDEA.
  User: gajendra
  Date: 04/03/20
  Time: 2:28 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <asset:stylesheet href="blog/home-view.css"/>

</head>

<body><div class="header">
    <a href="#default" class="logo">${name}</a>

    <div class="header-right">
        <a><g:link controller='blogFront' action="home">HOME</g:link></a>
        <a><g:link controller='blogFront' action='index'>Logout</g:link></a>
    </div>
</div>
<br><br><br>
<center>
    <p>
        You are not writen any text and Blog Please writen first the click the button

    </p>
</center>
</body>
</html>