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
        <asset:stylesheet href="blog/home.css"/>
</head>
<body>
<div class="header">
    <a class="logo">Nexthoughts Blog</a>
    <div class="header-right">
        <a class="active" href="#home">Home</a>
        <a>
            <button onclick="document.getElementById('id01').style.display='block'" >Login</button>
        </a>
        <a> <button onclick="document.getElementById('id01').style.display='block'" >Singup</button></a>
    </div>
</div>

<div style="padding-left:20px">
    <h1>
    <p>Write your own think to make the part of the <br>incredible nature and better would..</p>
    </h1>
</div>
<!-- login form--
-->

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
            <br><br>
            <input type="submit"></input><br>
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

</body>
</html>
