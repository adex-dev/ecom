<?php
require('config.php');
$id = $_GET['id'];
$del2 = mysqli_query($con,"delete from users where id = '$id' AND level ='admin'");
if($del2)
{
    mysqli_close($con);
    header('location:../admin-master.php');
    exit;	
}else
{
    echo "Error deleting record";  
}