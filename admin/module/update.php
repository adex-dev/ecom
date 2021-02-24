<?php
if (isset($_POST['update-profile'])) {
    $fisrtname =mysqli_real_escape_string($con,$_POST['fisrtname']);
    $lastname =mysqli_real_escape_string($con,$_POST['lastname']);
    $email=mysqli_real_escape_string($con,$_POST['email']);
    $phone=mysqli_real_escape_string($con,$_POST['phone']);
    $address=mysqli_real_escape_string($con,$_POST['address']);
    $update_profile=mysqli_query($con,"UPDATE users SET fullname = '$fisrtname $lastname', email='$email', hp='$phone', address='$address'  WHERE id = $id");
    if ($update_profile) {
        echo "<script>window.location.href=window.location.href;</script>";
    }else{
        echo "<script>alert('failed')</script>";
    }
}
if (isset($_POST['update-profile'])) {
    $fisrtname =mysqli_real_escape_string($con,$_POST['fisrtname']);
    $lastname =mysqli_real_escape_string($con,$_POST['lastname']);
    $email=mysqli_real_escape_string($con,$_POST['email']);
    $phone=mysqli_real_escape_string($con,$_POST['phone']);
    $address=mysqli_real_escape_string($con,$_POST['address']);
    $update_profile=mysqli_query($con,"UPDATE users SET fullname = '$fisrtname $lastname', email='$email', hp='$phone', address='$address'  WHERE id = $id");
    if ($update_profile) {
        echo "<script>window.location.href=window.location.href;</script>";
    }else{
        echo "<script>alert('failed')</script>";
    }
}

if (isset($_POST['update-password'])) {
$password = $_POST['password'];
$repeat_password = $_POST['repeat_password'];
if ($_POST["password"] === $_POST["repeat_password"]) {
$update_password=mysqli_query($con,"UPDATE users SET password = '$password' WHERE id = $id");

if($update_password){
echo "<script>alert('Password  Change');window.location.href=window.location.href;'</script>";

}else{
    echo "<script>alert('failed')</script>";
}
}else{
$result = "Incorrect Password";
}
}

if (isset($_POST['update_gambar_product'])) {
    if($_FILES['image']['type']!=''){
    if($_FILES['image']['type']!='image/png' && $_FILES['image']['type']!='image/jpg' && $_FILES['image']['type']!='image/jpeg'){
    $msg="Please select only png,jpg and jpeg image formate";
}
}
if($_FILES['image']['name']!=''){
$image=rand(111111111,999999999).'_'.$_FILES['image']['name'];
move_uploaded_file($_FILES['image']['tmp_name'],'../product/'.$image);
$update_gambar=mysqli_query($con,"UPDATE product SET image='$image' WHERE id = '$id'");
if($update_gambar){
    echo "<script>alert('Update  success');window.location.href='product-master'</script>";
    
    }else{
        echo "<script>alert('failed')</script>";
    }
}else{
    $update_gambar=mysqli_query($con,"UPDATE product SET image='$image' WHERE id = '$id'");
    if($update_gambar){
        echo "<script>alert('Update  success');window.location.href='product-master'</script>";
        
        }else{
            echo "<script>alert('failed')</script>";
        }
}

}
if (isset($_POST['update_product'])) {
$nama_product = mysqli_real_escape_string($con,$_POST['nama_product']);
$category = mysqli_real_escape_string($con,$_POST['category']);
$price = mysqli_real_escape_string($con,$_POST['price']);
$discount = mysqli_real_escape_string($con,$_POST['discount']);
$stock = mysqli_real_escape_string($con,$_POST['stock']);
$description = mysqli_real_escape_string($con,$_POST['description']);
$updateproduct=mysqli_query($con,"UPDATE product SET name_product = '$nama_product',categori='$category',price='$price',discount='$discount',stock='$stock', description ='$description' WHERE id = $id");
if($updateproduct){
    echo "<script>alert('Update  success');window.location.href='product-master'</script>";
    
    }else{
        echo "<script>alert('failed')</script>";
    }
}
?>