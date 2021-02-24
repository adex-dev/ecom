<?php
if (isset($_POST['submit'])) {
    $image = $_FILES['image'];
    $fileName = $_FILES['image']['name'];
    $fileTempName =$_FILES['image']['tmp_name'];
    $fileError = $_FILES['image']['error'];
    $fileType = $_FILES['image']['type'];
    $fileExt = explode('.',$fileName);
    $fileActualExt = strtolower(end($fileExt));
    $allowed = array('jpg','jpeg','gif','png');
    if (in_array($fileActualExt,$allowed)) {
        if ($fileError === 0) {
                $image = uniqid('',true).".".$fileActualExt;
                $fileDestination = '../media/profile/'.$image;
                move_uploaded_file($fileTempName,$fileDestination);
                $s=mysqli_query($con,"update  users set images='$image' where id='$id'");
                if($s){
                }else{
                    echo "<script>alert('failed')</script>";
			}
        }else{
            echo "<script>alert('the was an  error uploading your file')</script>";
        }
    }else{
        echo "<script>alert('You Cannot Upload This file type!')</script>";
    }
	}
	if (isset($_POST['submit1'])) {
    $image = $_FILES['image'];
    $fileName = $_FILES['image']['name'];
    $fileTempName =$_FILES['image']['tmp_name'];
    $fileError = $_FILES['image']['error'];
    $fileType = $_FILES['image']['type'];
    $fileExt = explode('.',$fileName);
    $fileActualExt = strtolower(end($fileExt));
    $allowed = array('jpg','jpeg','gif','png');
    if (in_array($fileActualExt,$allowed)) {
        if ($fileError === 0) {
                $image = uniqid('',true).".".$fileActualExt;
                $fileDestination = 'media/profile/'.$image;
                move_uploaded_file($fileTempName,$fileDestination);
                $s=mysqli_query($con,"update  users set images='$image' where id='$id'");
                if($s){
                }else{
                    echo "<script>alert('failed')</script>";
			}
        }else{
            echo "<script>alert('the was an  error uploading your file')</script>";
        }
    }else{
        echo "<script>alert('You Cannot Upload This file type!')</script>";
    }
	}
	?>