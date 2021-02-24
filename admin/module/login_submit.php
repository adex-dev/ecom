<?php
require('config.php');
if (isset($_POST['login'])) {
    $email =mysqli_real_escape_string($con,$_POST['email']);
    $password = mysqli_real_escape_string($con,md5($_POST['password']));
    $result =mysqli_query($con,"SELECT * from users where email='$email' AND password='$password'");
    $row = mysqli_num_rows($result);
    if($row > 0){
        $data = mysqli_fetch_assoc($result);
        if($data['level']=="admin"){
            $_SESSION['id'] = $data['id'];
            $_SESSION['level'] = "admin";
            $_SESSION['email'] = $email;
            header("location:../uas/admin");

        }else if($data['level']=="member"){
            $_SESSION['id'] = $data['id'];
            $_SESSION['email'] = $email;
            $_SESSION['level'] = "member";

            header("location:../uas/dasboard");
     
        }
    }else{
        header("location:index.php?pesan=gagal");}
}
?>