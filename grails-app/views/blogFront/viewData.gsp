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
</head>
<body>
<g:each in="${userAddresses}" var="p"  status="i">
    <h4>
      ${i+1}.${p.houseNumber},${p.roadName}, ${p.areaName}
    </h4>
</g:each>
<g:each in="${userRecords}" var="p"  status="i">
    <h4>
        <li>${p.firstName},${p.lastName}, ${p.emailId},${p. mobileNumber},${p.occupation}

        </li>
    </h4>
</g:each>

</body>
</html>