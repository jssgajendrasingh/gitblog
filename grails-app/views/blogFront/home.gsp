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
        <a><g:link controller='blogFront' action='index'>Logout</g:link></a>
        <a><g:link controller="blogFront" action="viewData">Your Details</g:link></a>
    </div>
</div>
<br>
<center>
<g:form method="POST" controller="BlogInsert" action="blog">
    <textarea rows="10" cols="25" name="userBlog"></textarea>
    <button type="submit" >Submit</button>
</g:form>
    <g:each in="${userRecords}" var="user">
        <table border="2">
            <tr>
                <th><b>First Name</b></th>
                <th><b>Last Name</b></th>
                <th><b>Email ID</b></th>
                <th><b>Mobile Number</b></th>
                <th><b>Occupation</b></th>
                <th><b>House Number</b></th>
                <th><b>Road Name</b></th>
                <th><b>Area Name</b></th>
                <th><b>Edit/Update</b></th>
            </tr>
            <tr>
                 <td>${user.firstName}</td>
                <td>${user.lastName}</td>
                <td >${user.emailId}</td>
                <td >${user.mobileNumber}</td>
                <td >${user.occupation}</td>
                <td ><g:each in="${userAddresses}" var="p"  status="i">
                        <table border="2">
                             <tr>
                                <td>${p.houseNumber}</td>
                             </tr>
                        </table>
                    </g:each>
                </td>
                <td>
                    <g:each in="${userAddresses}" var="p"  status="i">
                        <table border="2">
                            <tr>
                                <td>${p.roadName}</td>
                            </tr>
                        </table>
                    </g:each>
                </td>
                <td>
                    <g:each in="${userAddresses}" var="p"  status="i">
                        <table border="2">
                            <tr>
                                <td >${p.areaName}</td>
                            </tr>
                        </table>
                    </g:each>
                </td>
                <td>
                    <g:link controller="blogFront" action="edit">EDIT</g:link>
                </td>

            </tr>

        </table>
   </g:each>
   </center>




</body>
</html>