<?php
require('admin/module/config.php');
error_reporting(0);
if (isset($_POST['register'])) {
   
    $fullname = mysqli_real_escape_string($con,$_POST['firstname']." ".$_POST['lastname']);
	$email = mysqli_real_escape_string($con,$_POST['email']);
	$password = mysqli_real_escape_string($con,md5($_POST['password']));
	$birthday = mysqli_real_escape_string($con,$_POST['day']."-".$_POST['month']."-".$_POST['year']);
	$gender = mysqli_real_escape_string($con,$_POST['gender']);
    $hp = mysqli_real_escape_string($con,$_POST['hp']);
    $date = date('Y-m-d h:i:s');
    $address = mysqli_real_escape_string($con,$_POST['address']);
    $check_query=mysqli_num_rows(mysqli_query($con,"select * from users where email='$email'"));
    if($gender=='laki-laki'){
		$image='man.png';
	}else if($gender=='perempuan'){
		$image='girl.png';
	}
if ($cekquery>=1) {
   echo "<script>alert('email is already in use')</script>";
}else{
    $sql_insert = mysqli_query($con,"insert into users(fullname,hp,email,password,birthday,gender,address,images,level,bergabung) values('$fullname','$hp','$email','$password','$birthday','$gender','$address','$image','member','$date')");
    if ($sql_insert) {
        echo "<script>alert('Register Success')</script>";
    }else{
        echo "<script>alert('Register Failed')</script>";
    }
}
}
?>