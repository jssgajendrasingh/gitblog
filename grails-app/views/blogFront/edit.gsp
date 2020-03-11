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
</head>

<body>
<g:form controller="blogFront" action="abc" method="POST">
    <h4>EDIT PROFILES</h4>
    <label for="mobileNumber">Mobile Number</label>
    <input type="text" id="mobileNumber" name="mobileNumber"><br><br>
    <label for="emailId">Email Id:</label>
    <input type="text" id="emailId" name="emailId"><br><br>
    <label for="occupation">Occupation :</label>
    <input type="text" id="occupation" name="occupation">
    <br><br>
    <h4>EDIT Addresses</h4>

    <h2>current Address</h2>
    <label for="houseNumber">Mobile Number</label>
    <input type="text" id="houseNumber" name="houseNumber"><br><br>
    <label for="roadName">Email Id:</label>
    <input type="text" id="roadName" name="roadName"><br><br>
    <label for="areaName">Occupation :</label>
    <input type="text" id="areaName" name="areaName">
    <br><br>

    <h2>Permanent Address</h2>
    <label for="houseNumber">Mobile Number</label>
    <input type="text" id="houseNumber" name="houseNumber"><br><br>
    <label for="roadName">Email Id:</label>
    <input type="text" id="roadName" name="roadName"><br><br>
    <label for="areaName">Occupation :</label>
    <input type="text" id="areaName" name="areaName">
    <br><br>
    <button type="submit">Submit</button>
</g:form>
</body>
</html>