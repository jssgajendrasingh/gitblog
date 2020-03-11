<%--
  Created by IntelliJ IDEA.
  User: gajendra
  Date: 06/02/20
  Time: 5:24 PM
--%>
<html>
<head>
    <title>Blog</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <asset:stylesheet href="blog/home.css"/>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-danger navbar-dark">
    <ul class="navbar-nav">

        <li class="nav-item">
             <a class="nav-link" href="#">
                <button onclick="document.getElementById('id02').style.display='block'" style="width:auto;">Login</button>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">
                <button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Sign Up</button>
            </a>
        </li>
    </ul>
</nav>

%{--LOGIN from html code--}%
<div id="id02" class="modal">
<form class="modal-content animate" method="POST" action="${postUrl ?: '/login/authenticate'}">
        <div class="imgcontainer">
            <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
        </div>
        <div class="container">
            <label for="userName"><b>Username</b></label>
            <input type="text" placeholder="Enter Username" name="username" required>
            <br>
            <label for="password"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="password" required>
            <br>
            <button type="submit">Login</button>
            <label>
                <input type="checkbox" checked="checked" name="remember"> Remember me
            </label>
        </div>
        <div class="container" style="background-color:#f1f1f1">
            <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
            <span class="psw">Forgot <a href="#">password?</a></span>
        </div>
    </form>
</div>
%{--END OF LOGIN HTML CODE--}%

<div id="id01" class="modal">
    <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
    <g:form class="modal-content" controller="BlogFront" action="insert" method="post">

        <div class="imgcontainer">
            <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
        </div>
        <h4>Sign Up</h4>
        <div class="container">
            <label for="firstName"><b>First Name</b></label>
            <input type="text" id="firstName" placeholder="Enter First Name" name="firstName" required>

            <label for="lastName"><b>Last Name</b></label>
            <input type="text" id="lastName" placeholder="Enter Last Name" name="lastName" required>
            <br>
            <label for="emailId"><b>Email Id </b></label>
            <input type="text" id="emailId" placeholder="Enter Email Id" name="emailId" required>

            <label for="mobileNumber"><b>Mobile Number</b></label>
            <input type="text" id="mobileNumber" placeholder="Enter mobile Number" name="mobileNumber" required>
            <br>
            <label for="occupation"><b>occupation </b></label>
            <input type="text" id="occupation" placeholder="Enter occupation " name="occupation" required>

            <label for="userName"><b>Username</b></label>
            <input type="text" id="userName" placeholder="Enter Username" name="userName" required>
            <br>
            <label for="password"><b>Password</b></label>
            <input type="password" id="password" placeholder="Enter Password" name="password" required>
            <br><br>
           <h4>filling Address</h4>
            <br>
            <label for="houseNumber"><b>House Number</b></label>
            <input type="text" id="houseNumber" placeholder="House Number" name="houseNumber" required>

            <label for="roadName"><b>Road Name</b></label>
            <input type="text" id="roadName" placeholder="Road Name" name="roadName" required>
            <br>
            <label for="areaName"><b>Area Name</b></label>
            <input type="text" id="areaName" placeholder="Area Name" name="areaName" required>
            <br><br>
            <h4>filling Address 2</h4>
            <br>
            <label for="houseNumber1"><b>House Number</b></label>
            <input type="text" id="houseNumber1" placeholder="House Number" name="houseNumber" required>

            <label for="roadName1"><b>Road Name</b></label>
            <input type="text" id="roadName1" placeholder="Road Name" name="roadName" required>
            <br>
            <label for="areaName1"><b>Area Name</b></label>
            <input type="text" id="areaName1" placeholder="Area Name" name="areaName" required>

            <label>
                <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
            </label>

            <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

            <div class="clearfix">
                <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
                <button type="submit" class="signupbtn">Sign Up</button>
            </div>
        </div>
    </g:form>
</div>
<div class="container">
 Blog= ${blogname}
</div>

</body>
</html>
