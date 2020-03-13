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
    <asset:stylesheet href="blog/home-view.css"/>

</head>

<body><div class="header">
    <a href="#default" class="logo">${name}</a>

    <div class="header-right">
        <a><g:link controller='blogFront' action="home">HOME</g:link></a>
        <a><g:link controller='blogFront' action='index'>Logout</g:link></a>
    </div>
</div>
<g:form controller="blogInsert" action="blogUpdate">
<center>
    <br><br><br>
    <g:each in="${blogdetails}" var="blog" status="i">
    <table border="2">
        <tr>
            <th><b>ID</b></th>
            <th><b>Blog</b></th>
            <th><b>Edit/Update</b></th>
        </tr>

            <tr>
                <td>${i+1}</td>
                <td><input type="text"  name="userBlog" value="${blog.userBlog}"/></td>
                <td>
                    <input type="submit" value="submit" name="${blog.id}"/>
                </td>

            </tr>
   </table>
    </g:each>
</center>
</g:form>
</body>
</html>