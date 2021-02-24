<?php
require('config.php');
$id = $_GET['id'];
$del1 = mysqli_query($con,"delete from users where id = '$id' AND level ='member'");
if($del1)
{
    mysqli_close($con);
    header('location:../users-master.php');
    exit;	
}
else
{
    echo "Error deleting record";  
}