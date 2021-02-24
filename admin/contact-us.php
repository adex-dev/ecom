	<?php require('sidebar.php'); ?>
	<section>
		<div class="box">
			<h1 class="judul">SERBA SERBI SHOP</h1>
			
			<div class="dasboard_profil" style="justify-content: normal;align-content: normal; align-items: normal;">
				
				<table>
					<tr>
						<th>id</th>
						<th>Nama</th>
						<th>email</th>
						<th>Messages</th>
						<th>date</th>
						<th>tools</th>
						<th></th>
					</tr>
					<tr><th colspan="8" style="width:100%"><hr></th></tr>
					<?php $query = mysqli_query($con,"SELECT * FROM contact order by id DESC"); 
					while($listed = mysqli_fetch_assoc($query)) {
						?>
					<tr>
						<td><?php echo $listed['id'] ?></td>
						<td><?php echo $listed['nama'] ?></td>
						<td><?php echo $listed['email'] ?></td>
						<td style="width: 21%;padding: 12px;text-align: justify;border: 1px solid;"><?php echo $listed['messages'] ?></td>
						<td><?php echo $listed['date'] ?></td>
						<td><a href="/uas/admin/module/contact-delete?id=<?=$listed['id']?>"><input style="width:100%;cursor:pointer" type="button" value="delete"></a></td>
					</tr>
					<tr><th colspan="8" style="width:100%"><hr></th></tr>
					<?php } ?>
				</table>
			</div>
		</div>
	</section>
</body>
</html>