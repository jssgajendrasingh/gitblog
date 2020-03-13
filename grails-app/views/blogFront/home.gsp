<%--
  Created by IntelliJ IDEA.
  User: gajendra
  Date: 03/03/20
  Time: 4:31 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <asset:stylesheet href="blog/home-view.css"/>
    <style>

th,td {

    text-align: center;
}
    </style>

</head>

<body>
<div class="header">
    <a href="#default" class="logo">${name}</a>

    <div class="header-right">
        <a><g:link controller='blogFront' action="home">HOME</g:link></a>
        <a><g:link controller="blogFront" action="viewBlog">Your Blog</g:link></a>
        <a><g:link controller="blogFront" action="viewData">Your Details</g:link></a>
        <a><g:link controller='blogFront' action='index'>Logout</g:link></a>
    </div>
</div>
<center>
    <br>

    <h3><p>WRITE YOUR BLOG</p></h3>
    <g:form method="POST" controller="BlogInsert" action="blog">
        <textarea rows="10" cols="85" name="userBlog"></textarea>
        <button type="submit">Submit</button>
    </g:form>

   </center>




</body>
</html>