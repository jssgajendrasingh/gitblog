<%--
  Created by IntelliJ IDEA.
  User: gajendra
  Date: 09/03/20
  Time: 4:00 PM
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
<g:form method="POST" controller="blogFront" action="abc">
    <br><br><br>
    <g:each in="${userRecords}" var="user">
        <table border="2" align="center">
            <tr>
                <th><b>First Name</b></th>
                <th><b>Last Name</b></th>
                <th><b>Email ID</b></th>
                <th><b>Mobile Number</b></th>
                <th><b>Occupation</b></th>
                <th><b>House Number</b></th>
                <th><b>House Number</b></th>
                <th><b>Road Name</b></th>
                <th><b>Area Name</b></th>
                <th><b>Submit</b></th>
            </tr>

            <tr>
                <td><input type="text" name="firstName"  size="10" value="${user.firstName}"/></td>
                <td><input type="text" name="lastName" size="10" value="${user.lastName}"/></td>
                <td><input type="text" name="emailId" value="${user.emailId}"/></td>
                <td><input type="text" name="mobileNumber" size="10" value="${user.mobileNumber}"/></td>
                <td><input type="text" name="occupation" size="10" value="${user.occupation}"/></td>
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
                <td >
                    <g:each in="${userAddresses}" var="p"  status="i">
                    <table border="2">
                        <tr>
                            <td><input type="text" name="houseNumber" size="10" value="${p.houseNumber}"/></td>
                        </tr>
                    </table>
                    </g:each>
                </td>
                <td>
                    <g:each in="${userAddresses}" var="p"  status="i">
                        <table border="2">
                            <tr>
                                <td><input type="text" name="roadName" size="10" value="${p.roadName}"/></td>
                            </tr>
                        </table>
                    </g:each>
                </td>
                <td>
                    <g:each in="${userAddresses}" var="p"  status="i">
                        <table border="2">
                            <tr>
                                <td><input type="text" name="areaName"  size="10" value="${p.areaName}"/></td>
                            </tr>
                        </table>
                    </g:each>
                </td>
                <td>
                    <input type="submit" value="submit "/>
                </td>

            </tr>

        </table>
    </g:each>
</g:form>

</body>
</html>