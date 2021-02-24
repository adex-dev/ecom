<?php
if (isset($_POST['submit_category'])) {
$cek_kategori =mysqli_num_rows(mysqli_query($con,"select * from categori where nama_categori='$category'"));
if ($cek_kategori >=1) {
    echo "<script>alert('Category is already in use')</script>";
}else{
$category_insert =mysqli_query($con,"insert into categori (nama_categori) values('".mysqli_real_escape_string($con,$_POST['category'])."')") ;
if ($category_insert) {
    echo "<script>alert('New Category Success added')</script>";
}else{
    echo "<script>alert('Category failed added')</script>";
}
}
}

if (isset($_POST['submit_product'])) {
    $nama_product = mysqli_real_escape_string($con,$_POST['nama_product']);
    $category = mysqli_real_escape_string($con,$_POST['category']);
    $price = mysqli_real_escape_string($con,$_POST['price']);
    $discount = mysqli_real_escape_string($con,$_POST['discount']);
    $stock = mysqli_real_escape_string($con,$_POST['stock']);
    $description = mysqli_real_escape_string($con,$_POST['description']);
    $date = date('Y-m-d h:i:s');
    $cek_product =mysqli_num_rows(mysqli_query($con,"select * from product where name_product='$nama_product'"));
if ($cek_product >=1) {
    echo "<script>alert('Product is already in use')</script>";
}else{
if($_FILES['image']['type']){
if($_FILES['image']['type']!='image/png' && $_FILES['image']['type']!='image/jpg' && $_FILES['image']['type']!='image/jpeg'){
echo "<script>alert('Please select only png,jpg and jpeg image formate')</script>";
}
}
if($_FILES['image']['name']!=''){
$image=rand(111111111,999999999).'_'.$_FILES['image']['name'];
move_uploaded_file($_FILES['image']['tmp_name'],'../product/'.$image);
$insert_product=mysqli_query($con,"insert into product (name_product,price,discount,stock,description,image,categori,add_on) values('$nama_product','$price','$discount','$stock','$description','$image','$category','$date')");
header('location:product-master');
}else{
    $insert_product=mysqli_query($con,"insert into product (name_product,price,discount,stock,description,image,categori,add_on) values('$nama_product','$price','$discount','$stock','$description','$image','$category','$date')");
header('location:product-master');
}
}
}
?>