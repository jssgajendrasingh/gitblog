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
        <asset:stylesheet href="blog/gajendra.css"/>
        <asset:stylesheet href="blog/front.singup.css"/>
</head>
<body>
<div class="header">
    <a class="logo">Nexthoughts Blog</a>
    <div class="header-right">
        <a class="active">Home</a>
        <a>
            <button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>
        </a>
        <a></a>
    </div>
</div>

<div style="padding-left:20px">
    <h1><p>Write your own think to make the part of the <br>incredible nature and better would..</p></h1>
</div>
<!-- login form--
-->

<button onclick="document.getElementById('id02').style.display='block'" style="width:auto;">Sign Up</button>

<div id="id02" class="modal">
    <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
    <form class="modal-content" action="/action_page.php">
        <div class="container">
            <h1>Sign Up</h1>
            <p>Please fill in this form to create an account.</p>
            <hr>
            <label for="email"><b>Email</b></label>
            <input type="text" placeholder="Enter Email" name="email" required>

            <label for="psw"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="psw" required>

            <label for="psw-repeat"><b>Repeat Password</b></label>
            <input type="password" placeholder="Repeat Password" name="psw-repeat" required>

            <label>
                <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
            </label>

            <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

            <div class="clearfix">
                <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
                <button type="submit" class="signupbtn">Sign Up</button>
            </div>
        </div>
    </form>
</div>

<div id="id01" class="modal">

    <form class="modal-content animate" action="/action_page.php" method="post">
        <div class="imgcontainer">
            <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
         </div>

        <div class="container">
            <label for="uname"><b>Username</b></label>
            <input type="text" placeholder="Enter Username" name="uname" required>
            <br>
            <label for="psw"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="psw" required>

            <button type="submit">Login</button><br>
            <label>
                <input type="checkbox" checked="checked" name="remember"> Remember me
            </label>
        </div>

        <div class="container" style="background-color:#f1f1f1">
            <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
            <span class="psw">Forgot <a href="#">password?</a></span>
        </div>
    </form>
</div>

<!-- login form end--
-->

</body>
</html>
