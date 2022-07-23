<?php
session_start();
?>
<html>
	<head>
		<title>Welcome to Online Exam</title>
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<link href="quiz.css" rel="stylesheet">
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
		include("database.php");
		extract($_POST);
		if(isset($submit))
		{
			$rs=mysqli_query($con,"select * from mst_user where login='$loginid' and pass='$pass'");
			if(mysqli_num_rows($rs)<1)
			{
				$found="N";
			}
			else
			{
				$_SESSION['login']=$loginid;
			}
		}
		if (isset($_SESSION['login']))
		{
		echo "<h1 class='text-center bg-danger'>Welcome to Online Exam</h1>";
				echo '<table width="28%"  border="0" align="center">
				<tr>
						<td width="7%" height="65" valign="bottom"><img src="image/HLPBUTT2.JPG" width="50" height="50" align="middle"></td>
						<td width="93%" valign="bottom" bordercolor="#0000FF"> <a href="sublist.php" class="style4">Subject for Quiz </a></td>
				</tr>
				<tr>
						<td height="58" valign="bottom"><img src="image/DEGREE.JPG" width="43" height="43" align="absmiddle"></td>
						<td valign="bottom"> <a href="result.php" class="style4">Result </a></td>
				</tr>
				<tr>
						<td height="58" valign="bottom"><img src="image/DEGREE.JPG" width="43" height="43" align="absmiddle"></td>
						<td valign="bottom"> <a href="signout.php" class="style4">Signout </a></td>
				</tr>
		</table>';
		
				exit;
				
		}
		?>
		<table width="100%" border="0">
			
			<tr>
				<table align="center" border="0" WIDTH="50%" height="250">
					<h1 class="text-center bg-warning">LOGIN PAGE</h1>
					<form method="post" action="">
						
						<tr>
							<th class="text-primary">LOGIN ID</th>
							<th>
								<input class="form-control"type="TEXT" title="enter your regitered LOGIN ID"  placeholder="LOGIN ID"  maxlength="10" size="25"  id="loginid2" name="loginid"/></tD>
							</th>
							<tr>
								<th class="text-primary">ENTER PASSWORD</th>
								<th><input class="form-control" type="password" name="pass" id="pass2"/></th>
							</tr>
							<?php
							if(isset($found))
							{
							echo "Invalid Username or Password";
							}
							?>
						</span></td>
						<th></th>
						<th class="errors">
							<input class="btn btn-danger "type="submit" name="submit" id="submit" Value="Login"/>
							
							<a class="btn btn-success " href="signup.php">New user ? click here</a></th>
						</table>
					</form></td>
				</tr>
			</table>
		</body>
	</html>