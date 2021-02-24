<?php
session_start();
$con = mysqli_connect("web.akmadnudin.com","akmadnud_ganteng","Bintangku123","akmadnud_uas");
   if (mysqli_connect_error()) {
      echo "failed connect database" . mysqli_connect_error();
   } 
?>