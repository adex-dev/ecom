<?php require('sidebar.php'); 
require('module/add.php'); 
$sql_num = mysqli_query($con,"SELECT *, COUNT( * ) AS total FROM product order by id ");
$value=mysqli_fetch_assoc($sql_num);
$totalproduct = $value['total'];
?>
	<section>
		<div class="box">
			<h1 class="judul">SERBA SERBI SHOP</h1>
			
			<div class="dasboard_profil" style="justify-content: normal;align-content: normal; align-items: normal;">
				
				<table>
				<tr><th colspan="8">tambah kategori baru : <form method="post"><input type="text" name="category" placeholder="insert new catergory product" required><input type="submit" name="submit_category" value="add"></form></th><th><button  onclick="showcategory();">lihat category</button></th></tr>
					<tr><th colspan="8"><a href="product-master-manage"><input style="height: 29px;border-radius: 2px;cursor: pointer;" type="button" value="add product"></a><br><h2>Total Product <?= $totalproduct ?>: </h2></th></tr>
					<tr>
						<th>No</th>
						<th>id</th>
						<th>Nama Produk</th>
						<th>image</th>
						<th>Harga</th>
						<th>Stock</th>
						<th>Category</th>
						<th>Date Post</th>
						<th>Tools</th>
						<th></th>
					</tr>
					<tr><th colspan="8" style="width:100%"><hr></th></tr>
					<?php 
					$no=1;
					$queryy = mysqli_query($con,"SELECT * FROM product order by id DESC"); 
					while($listed = mysqli_fetch_assoc($queryy)) {
						?>
					<tr>
					    <td><?= $no++ ?></td>
						<td><?= $listed['id']?></td>
						<td><?= $listed['name_product']?></td>
						<td><img src="../product/<?= $listed['image']?>" ></td>
						<td>Rp.<?= $listed['price']?></td>
						<td><?= $listed['stock']?></td>
						<td><?= $listed['categori']?></td>
						<td><?= $listed['add_on']?></td>
						<td><a href="../product-detail.php?id=<?=$listed['id']?>"><input style="width:100%;cursor:pointer" type="button" value="detail"></a></td>
						<td><a href="edit-product-master-manage?id=<?=$listed['id']?>"><input style="width:100%;cursor:pointer" type="button" value="edit"></a></td>
						<td><a href="/uas/admin/module/delete?id=<?=$listed['id']?>"><input style="width:100%;cursor:pointer" type="button" value="delete"></a></td>
					</tr>
					<?php } ?>
				</table>
				<div class="categorie" id="displayCategory">
				<table>
					<tr><th><button onclick="showcategory();">close</button></th></tr>
				<tr><th>id</th><th colspan="2">Name Category</th><th></th></tr>
				<?php $query = mysqli_query($con,"SELECT * FROM categori"); 
                while($list = mysqli_fetch_assoc($query)) {
            ?>
				<tr><td><?php echo $list['id'] ?></td><td><?php echo $list['nama_categori'] ?></td><td><a href="/uas/admin/module/delete_categori?id=<?=$list['id']?>"><input style="width:100%;cursor:pointer" type="button" value="delete"></a></td></tr>
			<?php } ?>
			</table>
				</div>
			</div>
		</div>
	</section>
</body>
</html>