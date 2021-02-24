<?php 
require('sidebar.php');
require('module/add.php'); ?>
	<section>
		<div class="box">
			<h1 class="judul">SERBA SERBI SHOP</h1>
			<div class="dasboard_profil">
				<div class="product_manage">
					<form method="post" enctype="multipart/form-data">
					<label for="nama">Nama Product</label>
					<input type="text" name="nama_product" placeholder="Enter name Product" required>
					<label for="image">Thumbnail Product</label>
					<input type="file" name="image" required> 
					<label for="category">Category</label>
					<select name="category" id="" required>
						<option value="">select category</option>
						<?php $query = mysqli_query($con,"select * from categori");
					while($row = mysqli_fetch_assoc($query)){
						?>
						<option value="<?= $row['nama_categori'] ?>"><?= $row['nama_categori'] ?></option>
					<?php } ?>
					</select>
					<label for="price">Price</label>
					<input type="text" name="price" placeholder="Enter Price Product" required>
					<label for="discount">Discount</label>
					<input type="text" name="discount" placeholder="Enter Discount Product" required>
					<label for="stock">Stock</label>
					<input type="text" name="stock" placeholder="Enter Stock Product" required>
					<label for="description">Description</label> 
					<textarea class="description" name="description"  cols="30" rows="10" placeholder="Enter description Product" required></textarea>
					<input type="submit" name="submit_product" value="submit">
				</form>
				</div>
			</div>
		</div>
	</section>
	<script src="js/custom.js"></script>
	
	
</body>
</html>