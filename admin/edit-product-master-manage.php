<?php 
require('sidebar.php');
if(isset($_GET['id'])){
	$id=$_GET['id'];
	 }
	 else {
		 echo "<script>alert('Product failed added')</script>";   
	}
require('module/update.php'); 
$query    =mysqli_query($con, "SELECT * FROM product WHERE id='$id'");
$result    =mysqli_fetch_array($query);
?>
	<section>
		<div class="box" style="min-height: 128vh;">
		<form method="post" enctype="multipart/form-data">
		<img style="width: 200px;height: 200px;" src="../product/<?= $result['image'] ?>" alt="">
					<label for="image"><input type="file" name="image" required><br><input type="submit" name="update_gambar_product" value="update thumbnail"></label>
		</form>
			<h1 class="judul" style="top: 19px;">SERBA SERBI SHOP</h1>
			<div class="dasboard_profil">
				<div class="product_manage">
					<form method="post">
					<label for="nama">Nama Product</label>
					<input type="text" name="nama_product" placeholder="Enter name Product" value="<?= $result['name_product'] ?>">
					<label for="category">Category</label>
					<select name="category" id="">
						<option value="">select category</option>
						<?php $query = mysqli_query($con,"select * from categori");
					while($row = mysqli_fetch_assoc($query)){
						?>
						<option value="<?= $row['nama_categori'] ?>"><?= $row['nama_categori'] ?></option>
					<?php } ?>
					</select>
					<label for="price">Price</label>
					<input type="text" name="price" placeholder="Enter Price Product" value="<?= $result['price'] ?>">
					<label for="discount">Discount</label>
					<input type="text" name="discount" placeholder="Enter Discount Product" value="<?= $result['discount'] ?>">
					<label for="stock">Stock</label>
					<input type="text" name="stock" placeholder="Enter Stock Product" value="<?= $result['stock'] ?>">
					<label for="description">Description</label>
					<textarea class="description" name="description"  cols="30" rows="10" placeholder="Enter description Product"><?= $result['description'] ?></textarea>
					<input type="submit" name="update_product" value="submit">
				</form>
				</div>
			</div>
		</div>
	</section>
	<script src="js/custom.js"></script>
</body>
</html>