<?php
require('sidebar.php');

if(isset($_GET['id'])){
	$id    =$_GET['id'];
}
else {
	die ("Error. No ID Selected!");    
}
$queryy    =mysqli_query($con, "SELECT * FROM product WHERE categori='$id' order by categori");

?>
	<section>
		<div class="menupanel">
			<ul>
			<?php $query = mysqli_query($con,"SELECT * FROM categori order by id DESC"); 
					while($list = mysqli_fetch_assoc($query)) {
						?>
				<a href="categori.php?id=<?= $list['nama_categori']?>"><li><?= $list['nama_categori']?></li></a>
				<?php } ?>
			</ul>
		</div>
		<div class="box">
			<h1 class="judul">SERBA SERBI SHOP BEST PRODUCT</h1>
				<?php
				if($data=mysqli_num_rows($queryy) >=0){
				while($result = mysqli_fetch_assoc($queryy)) {
						?>
			<div class="product">
				<img src="./product/<?= $result['image'] ?>">
				<div class="nama">
				<h1><?= $result['name_product'] ?></h1>
				</div>
				<h5><s><?= $result['discount'] ?></s></h5>
				<h3>Rp.<?= $result['price'] ?></h3>
				<a href="product-detail?id=<?php echo $result['id']?>"><button>Lihat detail</button></a>
			</div>
			<?php }
				    
				}else{ echo "Not found";
			    
			}
			?>
		<?php require('chat.php'); ?>
		</div>
		
	</section>
</body>
</html>