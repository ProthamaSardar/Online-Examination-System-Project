<?php
session_start();
?>

<html>
<head>
<title>Administrative Login - Online Exam</title>
<link href="../quiz.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css"/>

</head>

<body>
    <div class="Top-bar">
  <div class="row mx-auto" style="background: pink;">
    <div class="col-md-12">
        <marquee width="100%" direction="left" height="50px">
            <h4 class="text-dark mt-2">Welcome to Online Examination System<h4>
          </marquee>
    </div>
    
  </div>
  </div>
<?php
include("header.php");
?>

<h1 class="text-center bg-danger">Adminstrative Login</h1>
<form name="form1" method="post" action="login.php">
<table class="table table-striped">
  <tr>
    <td width="106"><span class="style2"></span></td>
    <td width="132"><span class="style2"><span class="head1"><img class="img-circle" src="1.jpg" width="250" height="155"></span></span></td>
    <td width="238"><table width="219" border="0" align="center">
  <tr>
    <td width="163" class="style2">Login ID </td>
    <td width="149"><input class="form-control" name="loginid" type="text" id="loginid"></td>
  </tr>
  <tr>
    <td class="style2">Password</td>
    <td><input class="form-control" name="pass" type="password" id="pass"></td>
  </tr>
  <tr>
    <td class="style2">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td class="style2">&nbsp;</td>
    <td><input class="btn btn-primary" name="submit" type="submit" id="submit" value="Login"></td>
  </tr>
</table></td>
  </tr>
</table>

</form>

</body>
</html>
