<?php
session_start();
unset($_SESSION['email']);
unset($_SESSION['fullname']);
if(session_destroy()) {
header("Location:/uas");
}
?>