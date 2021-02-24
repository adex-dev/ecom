<?php
require('config.php');
$id = $_GET['id'];
$del3 = mysqli_query($con,"delete from contact where id = '$id'");
if($del3)
{
    mysqli_close($con);
    header('location:../contact-us.php');
    exit;	
}
else
{
    echo "Error deleting record";  
}