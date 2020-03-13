<%--
  Created by IntelliJ IDEA.
  User: gajendra
  Date: 13/03/20
  Time: 12:57 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <asset:stylesheet href="blog/home-view.css"/>

</head>

<body>
<div class="header">
    <div class="header-right">
        <a><g:link controller='blogFront' action="home">HOME</g:link></a>
        <a><g:link controller='blogFront' action='index'>Logout</g:link></a>
    </div>
</div>
<br><br>
-<center>
    <table border="2">
        <tr>
            <th><b>Serial Number</b></th>
            <th><b>blog</b></th>
        </tr>
        <g:each in="${userRecords}" var="blog" status="i">
            <tr>
                <td>${i + 1}</td>
                <td>${blog.userBlog}</td>
            </tr>
        </g:each>
    </table>
</center>
</body>
</html>