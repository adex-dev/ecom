<?php 
require('sidebar.php');
require('module/update.php');

$query    =mysqli_query($con, "SELECT * FROM users WHERE id='$id'");
$result    =mysqli_fetch_array($query);
$name = explode(" " , $result['fullname']);
 ?>

	<section>
		<div class="box">
			<h1 class="judul">SERBA SERBI SHOP</h1>
			<div class="dasboard">
			<div class="box_admin">
				<div class="profile_edit">
					<form method="post">
						<label for="firstname">first name</label>
						<input type="text" name="fisrtname" placeholder="fisrt Name" value="<?= $name[0] ?>">
						<label for="lastname">Last name</label>
						<input type="text" name="lastname" placeholder="Last Name" value="<?= $name[1] ?>">
						<label for="email">email</label>
						<input type="text" name="email"  placeholder="email" value="<?= $result['email']?>">
						<label for="phone">phone</label>
						<input type="text" name="phone" placeholder="phone" value="<?= $result['hp']?>">
						<textarea style="width: 100%;" name="address" id="" cols="30" rows="10"><?= $result['address']?></textarea>
						<input type="submit" name="update-profile" value="Update Profile">
					</form>
				</div>
				<div class="password">
					<form method="post">
						<label for="password">password</label>
						<input type="password" name="password" placeholder="password" >
						<label for="repeat_password">repeat password</label>
						<input type="password" name="password1" placeholder="repeat password" >
						<input type="submit" name="update-password" value="Update password">
					</form>
				</div>
			</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>