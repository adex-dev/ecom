<?php
require('sidebar.php');
if(isset($_GET['id'])){
	$id    =$_GET['id'];
}
else {
	die ("Error. No ID Selected!");    
}
include "koneksi.php";
$query    =mysqli_query($con, "SELECT * FROM product WHERE id='$id'");
$result    =mysqli_fetch_array($query);
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

		<div class="boxDetail">
			<div class="imgbox">
				<img src="./product/<?= $result['image'] ?>" alt="">
				<h1><?= $result['name_product'] ?>  </h1>
				<h5><s>Rp.<?= $result['discount'] ?></s></h5>
				<h2>Rp.2<?= $result['price'] ?></h2>
				<span><a href="index"><button>Continue Shooping</button></a><button>Add to Cart</button></span>
			</div>
			<div class="keterangan">
			<?= $result['description'] ?>
			</div>
		</div>
	</section>
</body>
</html>