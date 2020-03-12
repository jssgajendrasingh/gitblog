<%--
  Created by IntelliJ IDEA.
  User: gajendra
  Date: 12/03/20
  Time: 3:23 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <asset:stylesheet href="blog/home-view.css"/>

</head>

<body>
<div class="header">
    <a href="#default" class="logo">${name}</a>
    <div class="header-right">
        <a><g:link controller='blogFront' action="home">HOME</g:link></a>
        <a><g:link controller="blogFront" action="view">Show User</g:link></a>
        <a><g:link controller="blogFront" action="view">Show Address</g:link></a>
        <a><g:link controller="blogFront" action="view">Show Role</g:link></a>
        <a><g:link controller="blogFront" action="view">Show Blog</g:link></a>
        <a><g:link controller='blogFront' action='index'>Logout</g:link></a>
    </div>
</div>
<center><H1>ADMIN PAGE</H1>

</center>
</body>
</html>