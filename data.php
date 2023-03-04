<?php 
$koneksi = mysqli_connect("localhost","root","","anodize");

// Check connection
if (mysqli_connect_errno()){
	echo "Koneksi database gagal : " . mysqli_connect_error();
}

$data = mysqli_query($koneksi,"SELECT * FROM data_suhu ORDER BY id DESC LIMIT 40");

while($d = mysqli_fetch_array($data)){
	?>
	<tr id="ok">
		<!-- <td><?php echo $no++; ?></td> -->
		<td><?php echo $d['waktu']; ?></td>
		<td><?php echo $d['suhu1']; ?></td>
		<td><?php echo $d['suhu2']; ?></td>
		<td><?php echo $d['suhu3']; ?></td>
		<td><?php echo $d['suhu4']; ?></td>
		<td><?php echo $d['suhu5']; ?></td>
		<td><?php echo $d['suhu6']; ?></td>
		<td><?php echo $d['suhu6']; ?></td>
		<td><?php echo $d['suhu8']; ?></td>
		<td>
			<a class="badge badge-danger" href="hapus.php?id=<?php echo $d['id']; ?>"><i class="fa fa-trash-o"></i> Del</a>

		</td>

	</tr>
	<?php } 
$data = mysqli_query($koneksi,"SELECT * FROM data_suhu ORDER BY id DESC LIMIT 40");
	while($d = mysqli_fetch_array($data)){
	?>
	<tr id="oker">
		<!-- <td><?php echo $no++; ?></td> -->
		<td id="waktu"><?php echo '"'.$d['waktu'].'",'; ?></td>
		<td><?php echo $d['suhu1']; ?></td>
		<td><?php echo $d['suhu2']; ?></td>
		<td><?php echo $d['suhu3']; ?></td>
		<td><?php echo $d['suhu4']; ?></td>
		<td><?php echo $d['suhu5']; ?></td>
		<td><?php echo $d['suhu6']; ?></td>
		<td><?php echo $d['suhu6']; ?></td>
		<td><?php echo $d['suhu8']; ?></td>
		<td>
			<a class="badge badge-danger" href="hapus.php?id=<?php echo $d['id']; ?>"><i class="fa fa-trash-o"></i> Del</a>

		</td>

	</tr>
	<?php } ?>