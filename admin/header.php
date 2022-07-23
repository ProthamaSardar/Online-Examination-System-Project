<style>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
</style>
<table>
	<tr>
		<td width="10%">
		<img border="0" src="exam.png" width="100%" height="350" align="right"></td>
	</tr>
</table>
<Table width="100%">
	<tr>
		
		<td>
			
			<?php
				if(isset($_SESSION['alogin']))
				{
				
				echo "<h4 class='text-success text-center btn btn-success'>
				<div align=\"left\"><strong>
					<a href=\"viewsub.php\">  view Subject</a>&emsp;&emsp;
						<a href=\"testview.php\"> view Test</a>&emsp;&emsp;
					<a href=\"questiondelete.php\">View Question</a>&emsp;&emsp;
					<a href=\"showuser.php\"> view user</a></strong>
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						<strong><a href=\"login.php\">Admin Home</a>&emsp;
					<a href=\"signout.php\">Signout</a></strong>&emsp;&emsp;
				</div></h4>";
				}
				else
				{
					echo "&nbsp;";
				}
			?>
		</td>
		
	</tr>
	
</table>