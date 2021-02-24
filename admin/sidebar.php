<?php error_reporting(0);
 require('module/config.php'); 
 $id=$_SESSION['id'];
 if($_SESSION['level']=="") {
    header("Location:/uas");
}
elseif ($_SESSION['level']=="member") {
    header("Location:../uas/dasbord");
}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Serba Serbi Shop</title>
<link href="../css/vertical-1.css" type="text/css" rel="stylesheet">
<link href="../css/custom.css" type="text/css" rel="stylesheet">
<script src="//cdn.ckeditor.com/4.16.0/standard/ckeditor.js"></script>
<script src="js/custom.js"></script>
</head>
<body>
<aside>
		<header><h1><a href="#">Serba Serbi Shop</a></h1></header>
		<div class="sidebar">
		<ul>
		<a href="index"><li>Dasboard</li></a>
			<a href="profile"><li>profil</li></a>
			<a href="product-master"><li>PRODUCT_master</li></a>
			<a href="admin-master"><li>Admin Master</li></a>
			<a href="users-master"><li>User Master</li></a>
			<a href="contact-us"><li>Contact US</li></a>
			<a href="../admin/module/logout"><li>Logout</li></a>
		</ul>
	</div>
	<footer>
	  	<a href="http://web.akmadnudin.com/uas/uas.zip">klik for download source code</a>
	akmadnudin 30818001 <br>
			&copy; 2020  - <?php echo date("Y") ?></footer>
	</aside>