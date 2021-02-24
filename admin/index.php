<?php require('sidebar.php');
require('module/update-profile.php');
$query = mysqli_query($con,"select * from users where id='$id'");
$resul =mysqli_fetch_array($query);
?>

	<section>
		<div class="box">
			<h1 class="judul">SERBA SERBI SHOP</h1>
			<div class="dasboard_profil">
				<div class="profil">
			<img src="../media/profile/<?= $resul['images']?>" alt="">
			<h1><?= $resul['fullname']?></h1>
			<h2><?= $resul['email']?></h2>
			<h2><?= $resul['hp']?></h2>
			<h2><?= $resul['birthday']?></h2>
			<form action="index" method="post" enctype="multipart/form-data">
				<input type="file" name="image"><br>
				<input type="submit" name="submit" value="update profile">
			</form>
				</div>
			</div>
		</div>
	</section>
</body>
</html>