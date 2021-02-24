<?php
if (isset($_POST['submit_chat'])) {
	$name_chat = mysqli_real_escape_string($con,$_POST['name_chat']);
	$email_chat = mysqli_real_escape_string($con,$_POST['email_chat']);
	$pesan = mysqli_real_escape_string($con,$_POST['pesan']);
	$date = date("Y:m:d h:i:s");
	$insert = mysqli_query($con,"insert into contact (nama,email,messages,date) values ('$name_chat','$email_chat','$pesan','$date')");
	if ($insert) {
		echo "<script>alert('success forward to admin, please wait reply by email')</script>";
	}else {
		echo "<script>alert('failed, try again.')</script>";
	}
}
?>
<div class="popup" id="form_chat">
				<div class="formboxChat" >
					<h1>Chat Me</h1>
				<form method="post">
						<input type="text" name="name_chat" placeholder="Nama" required>
						<input type="text" name="email_chat" placeholder="Email" required>
						<textarea name="pesan" wrap="soft" cols="30" rows="10" placeholder="pesan" required></textarea>
						<input type="submit" name="submit_chat" value="send">
				</form>
			</div>
			</div>
			<div class="imgChat">
				<img style="height: 100px;width: 71px;" id="open_chat" onclick="openChat()" src="./media/live-chat.png">
				<img id="close_chat" style="display: none;" onclick="closeChat()" src="./media/cancel.png">
			</div>