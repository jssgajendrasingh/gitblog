<%--
  Created by IntelliJ IDEA.
  User: gajendra
  Date: 13/03/20
  Time: 5:30 PM
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
<center>
    <p><br><br><br>

        Blog information are successfully deleted please <br>

    </p>
</center>
</body>
</html>