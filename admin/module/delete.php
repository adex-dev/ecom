<?php
require('config.php');
$id = $_GET['id'];
$del = mysqli_query($con,"delete from product where id = '$id'");

if($del)
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