<%--
  Created by IntelliJ IDEA.
  User: gajendra
  Date: 06/03/20
  Time: 4:15 PM
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
    <g:each in="${userRecords}" var="user">
        <table border="2">
            <tr>
                <th><b>First Name</b></th>
                <th><b>Last Name</b></th>
                <th><b>Email ID</b></th>
                <th><b>Mobile Number</b></th>
                <th><b>Occupation</b></th>
                <th><b>Addresses</b></th>
                <th><b>House Number</b></th>
                <th><b>Road Name</b></th>
                <th><b>Area Name</b></th>
                <th><b>Edit/Update</b></th>
            </tr>
            <tr>
                <td>${user.firstName}</td>
                <td>${user.lastName}</td>
                <td>${user.emailId}</td>
                <td>${user.mobileNumber}</td>
                <td>${user.occupation}</td>
                <td>
                    <table>
                        <tr>
                            <td>Address-1</td>
                        </tr>
                        <tr>
                            <td>Address-2</td>
                        </tr>
                    </table>
                </td>
                <td><g:each in="${userAddresses}" var="p" status="i">
                    <table>
                        <tr>
                            <td>${p.houseNumber}</td>
                        </tr>
                    </table>
                </g:each>
                </td>
                <td>
                    <g:each in="${userAddresses}" var="p" status="i">
                        <table>
                            <tr>
                                <td>${p.roadName}</td>
                            </tr>
                        </table>
                    </g:each>
                </td>
                <td>
                    <g:each in="${userAddresses}" var="p" status="i">
                        <table>
                            <tr>
                                <td>${p.areaName}</td>
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