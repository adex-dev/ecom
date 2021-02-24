<?php

require('sidebar.php');
require('admin/module/login_submit.php'); 
?>
	<section>
		<div class="box">
			<h1 class="judul">SERBA SERBI SHOP <br> LOGIN
			</h1>
			<div class="panel">
				<div class="inputBox">
					<form method="post">
					<label for="email">Email</label>
					<input type="text" name="email" placeholder="Enter Your Email">
					<label for="password">Password</label>
					<input type="password" name="password" placeholder="Enter Your Password">
					<input type="submit" name="login" value="Login">
				</form>
				</div>
			</div>
			<?php require('chat.php'); ?>
		</div>
	</section>
</body>
</html>