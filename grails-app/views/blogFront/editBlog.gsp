<%--
  Created by IntelliJ IDEA.
  User: gajendra
  Date: 13/03/20
  Time: 3:08 PM
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
            <th><b>ID</b></th>
            <th><b>Blog</b></th>
            <th><b>Edit/Update</b></th>
        </tr>
        <g:each in="${blogdetails}" var="blog" status="i">
            <tr>
                <td>${blog.id}</td>
                <td><input type="text" name="firstName" size="10" value="${blog.userBlog}"/></td>
                <td>
                    <input type="submit" value="submit "/>
                </td>

            </tr>
        </g:each>

</table></center>
</body>
</html>