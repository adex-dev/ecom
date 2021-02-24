<?php
require('config.php');
$id = $_GET['id'];
$del2 = mysqli_query($con,"delete from categori where id = '$id'");

if($del2)
{
    mysqli_close($con);
    header('location:../product-master.php');
    exit;	
}
else
{
    echo "Error deleting record";  
}
?>