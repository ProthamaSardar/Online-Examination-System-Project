<?php
session_start();
?>
<html>
	<head>
		<title>Online Quiz  - Result </title>
		<link href="quiz.css" rel="stylesheet">
	</head>
	<body>
		<?php
		include("header.php");
		include("database.php");
		extract($_SESSION);
		$rs=mysqli_query($con,"select t.test_name,t.total_que,r.test_date,r.score from mst_test t, mst_result r where
		t.test_id=r.test_id and r.login='$login'") or die(mysqli_error());
		echo "<h1 class=head1> Result </h1>";
		if(mysqli_num_rows($rs)<1)
		{
			echo "<br><br><h1 class=head1> You have not given any quiz</h1>";
			exit;
		}
		echo "<table border=1 align=center><tr class=style2><td width=300>Test Name <td> Total<br> Question <td> Score";
				while($row=mysqli_fetch_row($rs))
				{
				echo "<tr class=style8><td>$row[0] <td align=center> $row[1] <td align=center> $row[3]";
						}
				echo "</table>";
			?>
		</body>
	</html>