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
    <br><br><br>
    <table border="2">
        <tr>
            <th><b>ID</b></th>
            <th><b>Blog</b></th>
            <th><b>Edit/Update</b></th>
            <th><b>Deleted</b></th>

        </tr>
        <g:each in="${blogdetails}" var="blog" status="i">
            <tr>
                <td>${i+1}</td>
                <td>${blog.userBlog}</td>
                <td>
                    <g:form controller="blogFront" action="editBlog">
                        <input type="submit" value="edit" name="${blog.id}" />
                </g:form>
                </td>
                <td>
                    <g:form controller="blogFront" action="deletedBlog">
                        <input type="submit" value="deleted" name="${blog.id}" />
                    </g:form>
                </td>

            </tr>
        </g:each>

</table></center>
</body>
</html>