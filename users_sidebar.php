<?php error_reporting(0);
if($_SESSION['level']!="admin"){
    header('/uas');
    }elseif($_SESSION['level']!="member"){
		header('location:/uas');
	}
 require('admin/module/config.php');
 $id = $_SESSION['id']; 
 ?>

 <!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Serba Serbi Shop</title>
	
<link href="css/vertical-1.css" type="text/css" rel="stylesheet">
<link href="css/custom.css" type="text/css" rel="stylesheet">
</head>
<body>
<aside>
		<header><h1><a href="#">Serba Serbi Shop</a></h1></header>
		<div class="sidebar">
		<ul>
			<a href="dasboard"><li>Dasboard</li></a>
			<a href="profile"><li>Profile</li></a>
			<a href="#"><li>Konfirmasi Pembayaran</li></a>
			<a href="#"><li>History order</li></a>
			<a href="../uas/admin/module/logout"><li>Logout</li></a>
		</ul>
	</div>
		<footer>akmadnudin 30818001 <br>
			&copy; 2020  - <?php echo date("Y") ?></footer>
	</aside>