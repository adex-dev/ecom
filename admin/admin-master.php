<?php require('sidebar.php'); 
$query=mysqli_query($con,"SELECT * FROM users WHERE level LIKE 'admin'");
$cek_array =  array();
while($row=mysqli_fetch_array($query)){
	 $cek_array[]=$row;
}
?>
	<section>
		<div class="box">
			<h1 class="judul">SERBA SERBI SHOP</h1>
			
			<div class="dasboard_profil" style="justify-content: normal;align-content: normal; align-items: normal;">
				
				<table>
					
					<tr><th colspan="8"><br><h2>Change to Member level : </h2><input type="text" placeholder="enter ID admin" required><input style="height: 29px;border-radius: 2px;cursor: pointer;" type="button" value="submit"></th></tr>
					<tr>
						<th>id</th>
						<th>Nama</th>
						<th>email</th>
						<th>hp</th>
						<th>join</th>
						<th>level</th>
						<th>tools</th>
						<th></th>
					</tr>
					<tr><th colspan="8" style="width:100%"><hr></th></tr>
					<?php foreach($cek_array as $list) {?>
					<tr>
					<td><?php echo $list['id'] ?></td>
						<td><?php echo $list['fullname'] ?></td>
						<td><?php echo $list['email'] ?></td>
						<td><?php echo $list['hp'] ?></td>
						<td><?php echo $list['bergabung'] ?></td>
						<td><?php echo $list['level'] ?></td>
						<td><a href="/uas/admin/module/admin-delete?id=<?=$list['id']?>"><input style="width:100%;cursor:pointer" type="button" value="delete"></a></td>
					</tr>
					<tr><td colspan="8" style="width:100%"><hr></td></tr>
					<?php } ?>
				</table>
			</div>
		</div>
	</section>
</body>
</html>