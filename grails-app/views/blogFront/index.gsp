<%--
  Created by IntelliJ IDEA.
  User: gajendra
  Date: 06/02/20
  Time: 5:24 PM
--%>
<html>
<head>
    <title>blog Portal</title>
        <asset:stylesheet href="blog/home.css"/>

        <asset:stylesheet href="blog/front.singup.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
<div class="header">
    <a class="logo">Nexthoughts Blog</a>
    <div class="header-right">
        <a class="active">Home</a>
        <a>
            <button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>
        </a>
        <a>
            <button onclick="document.getElementById('id02').style.display='block'" style="width:auto;">Sign Up</button>
        </a>
    </div>
</div>

<div style="padding-left:20px">
    <h1><p>Write your own think to make the part of the <br>incredible nature and better would..</p></h1>
</div>
<!-- login form--
-->


<div id="id02" class="modal">
    <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
    <form class="modal-content" >
        <div class="container">
            <h1>Sign Up</h1>
            <hr>
            <label for="firstNmae"><b>First Name</b></label>
            <input type="text" placeholder="First Name" name="firstName" required>
            <label for="middleName"><b>Middle Name</b></label>
            <input type="text" placeholder="Middle Name" name="middleName" required>
            <br>
            <label for="lastName"><b>Last Name</b></label>
            <input type="text" placeholder="Last Name" name="lastName" required>
            <br>
            <label for="emailId"><b>Email</b></label>
            <input type="text" placeholder="Enter Email" name="emailId" required>
            <br>
            <label for="mobileNumber"><b>Mobile Number</b></label>
            <input type="text" placeholder="Mobile Number" name="mobileNumber" required>
            <br>
            <label for="occupation"><b>Occupation</b></label>
            <input type="text" placeholder="Occupation"name="occupation" required>
            <br>
            <label for="birthDate"><b>Date of Birth</b></label>
            <input type="date" placeholder="Date of Birth"name="birthDate" required>
            <br>
            <label for="userName"><b>Username</b></label>
            <input type="text" placeholder="Username"name="userName" required>
            <br>
            <label for="psw"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="password" required>
            <br>
            <label for="psw-repeat"><b>Repeat Password</b></label>
            <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
            <br>
             <div class="clearfix">
                <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
                <button type="submit" class="signupbtn">Sign Up</button>
            </div>
        </div>
    </form>
</div>

<div id="id01" class="modal">

    <div class="container">
        <form class="form-inline" action="/action_page.php">
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
            </div>
            <div class="form-group">
                <label for="pwd">Password:</label>
                <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
            </div>
            <div class="checkbox">
                <label><input type="checkbox" name="remember"> Remember me</label>
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
        </form>
    </div>

</div>

<!-- login form end--
-->

</body>
</html>
