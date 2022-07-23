<html>
<head>
<title>New user signup </title>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<script>
function check()
{

 if(document.form1.lid.value=="")
  {
    alert("Plese Enter Login Id");
  document.form1.lid.focus();
  return false;
  }
 
 if(document.form1.pass.value=="")
  {
    alert("Plese Enter Your Password");
  document.form1.pass.focus();
  return false;
  } 
  if(document.form1.cpass.value=="")
  {
    alert("Plese Enter Confirm Password");
  document.form1.cpass.focus();
  return false;
  }
  if(document.form1.pass.value!=document.form1.cpass.value)
  {
    alert("Confirm Password does not matched");
  document.form1.cpass.focus();
  return false;
  }
  if(document.form1.name.value=="")
  {
    alert("Plese Enter Your Name");
  document.form1.name.focus();
  return false;
  }
  if(document.form1.address.value=="")
  {
    alert("Plese Enter Address");
  document.form1.address.focus();
  return false;
  }
  if(document.form1.city.value=="")
  {
    alert("Plese Enter City Name");
  document.form1.city.focus();
  return false;
  }
  if(document.form1.phone.value=="")
  {
    alert("Plese Enter Contact No");
  document.form1.phone.focus();
  return false;
  }
  if(document.form1.email.value=="")
  {
    alert("Plese Enter your Email Address");
  document.form1.email.focus();
  return false;
  }

  return true;
  }
  
</script>
<link href="quiz.css" rel="stylesheet">
</head>

<body class="">
<?php
include("header.php");
?>
 <table width="100%" border="0">
   <tr>
     <h1 class="text-center bg-primary">REGISTRACTION PAGE</h1>
   </tr>
   <tr>
     <td><form name="form1" method="post" action="signupuser.php" onSubmit="return check();">

      <table class=" table table-striped">
    
         <tr>
           <td class="style7">LOGIN ID</div></td>
           <td><input class="form-control"type="text" name="lid"></td>
         </tr>
         <tr>
           <td class="style7">Password</td>
           <td><input class="form-control"type="password" name="pass"></td>
         </tr>
         <tr>
           <td class="style7" >Confirm Password </td>
           <td><input class="form-control" name="cpass" type="password" id="cpass"></td>
         </tr>
         <tr>
           <td class="style7">Name</td>
           <td><input class="form-control" name="name" type="text" id="name"></td>
         </tr>
         <tr>
           <td valign="top" class="style7">Address</td>
           <td><textarea class="form-control" name="address" id="address"></textarea></td>
         </tr>
         <tr>
           <td valign="top" class="style7">City</td>
           <td><input class="form-control" name="city" type="text" id="city"></td>
         </tr>
         <tr>
           <td valign="top" class="style7">Phone</td>
           <td><input class="form-control" name="phone" type="text" id="phone"></td>
         </tr>
         <tr>
           <td valign="top" class="style7">E-mail</td>
           <td><input class="form-control" name="email" type="email" id="email"></td>
         </tr>
         <tr>
           <td>&nbsp;</td>
           <td><input class="btn btn-danger" type="submit" name="Submit" value="Signup">
            <a href="user.php"><input class="btn btn-danger"  value="Back"></a>
           </td>
         </tr>
       </table>
     </form></td>
   </tr>
 </table>
 
</body>
</html>
