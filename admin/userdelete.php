<?php
session_start();
?>
<html>
    <head>
        <link href="quiz.css" rel="stylesheet">
    </head>
    <body>
        <?php
        include("header.php");
        include("../database.php");
        $id=$_GET['login'];
        $sql=mysqli_query($con,"delete from mst_user where login='$id'");
        header('location:showuser.php');
        ?>
    </body>
    </html>