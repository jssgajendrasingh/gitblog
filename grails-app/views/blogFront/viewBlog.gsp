<%--
  Created by IntelliJ IDEA.
  User: gajendra
  Date: 13/03/20
  Time: 2:49 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<center>
<table border="2">
    <tr>
        <th><b>Serial Number</b></th>
        <th><b>Blog</b></th>
        <th><b>Edit/Update</b></th>
    </tr>
    <g:each in="${blogdetails}" var="blog" status="i">
        <tr>
            <td>${i+1}</td>
            <td>${blog.userBlog}</td>
            <td>
                <g:link controller="blogFront" action="editBlog">EDIT</g:link>
            </td>

        </tr>
    </g:each>

</table></center>
</body>
</html>