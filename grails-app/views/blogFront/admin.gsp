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
        <a><g:link controller='blogFront' action='index'>Logout</g:link></a>
    </div>
</div>
<center>
    <p>Select a table from the list for view records.</p>
    <g:form controller="blogFront" action="view">
        <select name="value">
            <option value="userString">User</option>
            <option value="address">Address</option>
            <option value="blog">Blog</option>
        </select><br><br>
        <input type="submit" value="show Records"/>
    </g:form>
</center>
</body>
</html>