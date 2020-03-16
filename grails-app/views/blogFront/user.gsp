<%--
  Created by IntelliJ IDEA.
  User: gajendra
  Date: 12/03/20
  Time: 3:43 PM
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
    <h2>USER TABLE</h2>
    <table border="2">
        <tr>
            <th><b>Serial Number</b></th>
            <th><b>First Name</b></th>
            <th><b>Last Name</b></th>
            <th><b>Email ID</b></th>
            <th><b>Mobile Number</b></th>
            <th><b>Occupation</b></th>
            <th><b>User Name</b></th>
        </tr>
        <g:each in="${userRecords}" var="user"  status="i">
            <tr>
                <td>${i+1}</td>
                <td>${user.firstName}</td>
                <td>${user.lastName}</td>
                <td >${user.emailId}</td>
                <td >${user.mobileNumber}</td>
                <td >${user.occupation}</td>
                <td >${user.userName}</td>
            </tr>
        </g:each>
    </table>
</center>
</body>
</html>