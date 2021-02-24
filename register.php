<?php
require('admin/module/register-submit.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Themes Vertical 1</title>
	
<link href="css/vertical-1.css" type="text/css" rel="stylesheet">
<link href="css/custom.css" type="text/css" rel="stylesheet">
</head>

<body>
<?php require('sidebar.php'); ?>
	<section>
		
		<div class="box">
			<h1 class="judul" style="top: 0;">SERBA SERBI SHOP <br> Register
			</h1>
			<div class="panel">
				<div class="inputBox">
					
					<form method="post">
					<label for="fullnamee">Name</label>
					<input type="text" minlength="4" name="firstname" id="firstname" placeholder="Enter Your First Name" required>
					<span style="    text-align: left;
					float: left;">min 4 charakter</span>
					<input type="text" minlength="4" name="lastname" id="LastName" placeholder="Enter Your Last Name" required>
					<br>
					<label for="hp">hp</label>
					<input type="text" maxlength="13" name="hp" placeholder="Enter Your Phone" required>
					<label for="email">Email</label>
					<input type="text" name="email" placeholder="Enter Your Email" required>
					<label for="password">Password</label>
					<input type="password" name="password" placeholder="Enter Your Password" required>
					<span>min 6 charakter</span>
					<br>
					</br>
					<label for="birthday"> birthday</label>
					<span>
						<select name="day" id="birthday" required>
							<option value="">Choose Day</option>
							<?php
							for ($a=1; $a<=31;$a++) {
						
							?>
							<option value="<?php echo $a ?>"><?php echo $a ?></option>
						<?php } ?>
						</select>
						<select name="month" id="birthday" required>
						<option value="month">
							Choose Month
						</option>
						<option value="january">january</option>
						<option value="febuary">febuary</option>
						<option value="march">march</option>
						<option value="april">april</option>
						<option value="may">may</option>
						<option value="june">june</option>
						<option value="july">july</option>
						<option value="august">august</option>
						<option value="september">september</option>
						<option value="october">october</option>
						<option value="november">november</option>
						<option value="desember">desember</option>
					</select>
					<select name="year" id="birthday" required>
						<option value="year">
							Choose year
						</option>
						<?php
						$th=1990;
							while ($th<=date("Y")) {
								$th++;
							?>
					<option value="<?php echo $th ?>"><?php echo $th ?></option>
						<?php } ?>
					</select>
				</span>
				<label for="gender"> laki Laki</label><input style="width:4%" name="gender" type="radio" value="laki-laki" checked required> </br><label for="gender">Perempuan</label><input style="width:4%" name="gender" type="radio" value="perempuan" <?php if (isset($gender) && $gender=="female") echo "checked";?> required>
				<textarea name="address" id="" cols="30" rows="10" placeholder="address" required></textarea>
				<input type="submit" name="register" value="Login">
				<input type="hidden" name="image">
				</form>
				</div>
			</div>
			<?php require('chat.php'); ?>
		</div>
	</section>
</body>
</html>