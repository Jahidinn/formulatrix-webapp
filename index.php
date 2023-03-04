<?php 
include "koneksi.php";

if (isset($_POST['urutkan'])) {
	$dataurut2 = (string)$_POST['urutkan'];
	if ($dataurut2 === 'oldest') {
		$urutan = "ASC";
		$urutgrafik = "DESC";
		$dataurut = "oldest";
		$dataurut2 = "latest";
	}
	else {
		$urutan = "DESC";
		$urutgrafik = "ASC";
		$dataurut = "latest";
		$dataurut2 = "oldest";
	}
}
else {
	$urutan = "DESC";
	$urutgrafik = "ASC";
	$dataurut = "latest";
	$dataurut2 = "oldest";

}

$data = mysqli_query($connect,"SELECT * FROM data_suhu");
$jumlahdata = mysqli_num_rows($data);
$ok =  "LIMIT ";
if (isset($_POST['submit'])) {
	$batasangka = $_POST['limit'];
	if (empty($batasangka)) {
		$batasangka = "";
		$ok = "";
	}
	if ($batasangka > $jumlahdata) {
		$batasangka = $jumlahdata;
	}
	if ($batasangka < 0) {
		$batasangka = $batasangka* -1;
	}
	$number = $batasangka;
	$batas = $ok.$number;

	$firstDate = $_POST['firstDate'];
	$lastDate = $_POST['lastDate'];
}
else {
	$number = '';
	$batas = '';
	$firstDate = date("Y-m-d");
	$lastDate = date("Y-m-d");
}

if ($firstDate > $lastDate) {
	$firstDate = $lastDate;
}

$tampil = mysqli_query($connect,"SELECT * FROM data_suhu WHERE waktu BETWEEN '$firstDate' AND '$lastDate' ORDER BY waktu $urutan, time $urutan $batas");
$dataTampil = mysqli_num_rows($tampil);
?>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.0/css/bootstrap.min.css" integrity="sha384-PDle/QlgIONtM1aqA2Qemk5gPOE7wFq8+Em+G/hmo5Iq0CCmYZLv3fVRDJ4MMwEA" crossorigin="anonymous">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker.min.css" rel="stylesheet"/>
	<title>Data anodize</title>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
	<style type="text/css">
	.datepicker{
		margin: 10px 0;
		padding: 15px;
	}
</style>
</head>
<body>

	<div class="m-2">
		<div class="waktu">

		</div>
		<img src="logo.png" style="height: 25px;">
	</div>


	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" >
		<div class="modal-dialog modal-xl " role="document" >
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Graph of temperature change</h5> 
					<div class="col text-center">
						<span class="text-center"><i class="fa fa-long-arrow-left"></i> New data | show <strong><?= $number; ?></strong> data</span>
					</div>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="">

						<canvas id="myChart" width="300" height="150"></canvas>

						<script>
							var ctx = document.getElementById("myChart").getContext('2d');
							var myChart = new Chart(ctx, {
								type: 'line',
								data: {
									labels: [
									<?php 
									$data = mysqli_query($connect,"SELECT * FROM data_suhu WHERE waktu BETWEEN '$firstDate' AND '$lastDate' ORDER BY waktu $urutan, time $urutan $batas");
									while($d = mysqli_fetch_array($data)){
										echo '"'.$d['waktu'].' / '.$d['time'].'",';
									}
									?>
									],
									datasets: [{
										label: 'Metex',
										data: [
										<?php 

										$data = mysqli_query($connect,"SELECT * FROM data_suhu WHERE waktu BETWEEN '$firstDate' AND '$lastDate' ORDER BY waktu $urutan, time $urutan $batas");
										while($d = mysqli_fetch_array($data)){
											echo (int)$d['suhu1'].',';
										}
										?>
										],
										backgroundColor: [
										'rgba(2, 243, 247, 0)'
										],
										borderColor: [
										'rgba(2, 243, 247,1)'
										],
										borderWidth: 1
									},{
										label: 'NaOH',
										data: [
										<?php 

										$data = mysqli_query($connect,"SELECT * FROM data_suhu WHERE waktu BETWEEN '$firstDate' AND '$lastDate' ORDER BY waktu $urutan, time $urutan $batas");
										while($d = mysqli_fetch_array($data)){
											echo (int)$d['suhu2'].',';
										}
										?>
										],
										backgroundColor: [
										'rgba(255, 99, 132, 0)'
										],
										borderColor: [
										'rgba(244, 159, 31,1)'
										],
										borderWidth: 1
									},{
										label: 'Anodize 2',
										data: [
										<?php 

										$data = mysqli_query($connect,"SELECT * FROM data_suhu WHERE waktu BETWEEN '$firstDate' AND '$lastDate' ORDER BY waktu $urutan, time $urutan $batas");
										while($d = mysqli_fetch_array($data)){
											echo (int)$d['suhu3'].',';
										}
										?>
										],
										backgroundColor: [
										'rgba(255, 99, 132, 0)'
										],
										borderColor: [
										'rgba(96, 247, 111,1)'
										],
										borderWidth: 1
									},{
										label: 'Anodize 1',
										data: [
										<?php 

										$data = mysqli_query($connect,"SELECT * FROM data_suhu WHERE waktu BETWEEN '$firstDate' AND '$lastDate' ORDER BY waktu $urutan, time $urutan $batas");
										while($d = mysqli_fetch_array($data)){
											echo (int)$d['suhu4'].',';
										}
										?>
										],
										backgroundColor: [
										'rgba(255, 99, 132, 0)'
										],
										borderColor: [
										'rgba(247, 206, 1,1)'
										],
										borderWidth: 1
									},{
										label: 'Coloring',
										data: [
										<?php 

										$data = mysqli_query($connect,"SELECT * FROM data_suhu WHERE waktu BETWEEN '$firstDate' AND '$lastDate' ORDER BY waktu $urutan, time $urutan $batas");
										while($d = mysqli_fetch_array($data)){
											echo (int)$d['suhu5'].',';
										}
										?>
										],
										backgroundColor: [
										'rgba(255, 99, 132, 0)'
										],
										borderColor: [
										'rgba(175, 7, 237,1)'
										],
										borderWidth: 1
									},
									{
										label: 'Sealing selt',
										data: [
										<?php 

										$data = mysqli_query($connect,"SELECT * FROM data_suhu WHERE waktu BETWEEN '$firstDate' AND '$lastDate' ORDER BY waktu $urutan, time $urutan $batas");
										while($d = mysqli_fetch_array($data)){
											echo (int)$d['suhu6'].',';
										}
										?>
										],
										backgroundColor: [
										'rgba(255, 99, 132, 0)'
										],
										borderColor: [
										'rgba(252, 55, 65,1)'
										],
										borderWidth: 1
									},{
										label: 'Nickle plate 1',
										data: [
										<?php 

										$data = mysqli_query($connect,"SELECT * FROM data_suhu WHERE waktu BETWEEN '$firstDate' AND '$lastDate' ORDER BY waktu $urutan, time $urutan $batas");
										while($d = mysqli_fetch_array($data)){
											echo (int)$d['suhu7'].',';
										}
										?>
										],
										backgroundColor: [
										'rgba(255, 99, 132, 0)'
										],
										borderColor: [
										'rgba(0, 237, 19,1)'
										],
										borderWidth: 1
									},
									{
										label: 'Nickle plate 2',
										data: [
										<?php 

										$data = mysqli_query($connect,"SELECT * FROM data_suhu WHERE waktu BETWEEN '$firstDate' AND '$lastDate' ORDER BY waktu $urutan, time $urutan $batas");
										while($d = mysqli_fetch_array($data)){
											echo (int)$d['suhu8'].',';
										}
										?>
										],
										backgroundColor: [
										'rgba(0,99,132,0)'
										],
										borderColor: [
										'rgba(247, 2, 186,1)'
										],
										borderWidth: 1
									}]
								},
								options: {
									scales: {
										yAxes: [{
											ticks: {
												"beginAtZero": true,
												"min": 10,
												"suggestedMin": 10
											}
										}]
									},
									legend: {
										reverse: true,
									}
								}
							});
						</script>
					</div>      </div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Ok</button>
					</div>
				</div>
			</div>
		</div>

		<div class="container text-center mt-2 mb-2">
			<h4>Anodize data record</h4>
		</div>
		<div class="m-2">
			<form action="" method="post">
				<div class="row m-0 p-0 mt-3 mb-2">
					<div class="col-md-6 m-0 p-0">
						<div class="form-inline">
							<!-- <label for="limit" class="mr-1">Show</label> -->
							<input type="number" class="form-control mr-1" style="width: 100px;" name="limit" id="limit" placeholder="All" value="<?= $number; ?>">
							<div class="input-group mr-1">
								<div class="input-group-prepend">
									<div class="input-group-text"><i class="fa fa-calendar"></i></div>
								</div>
								<input type="text" class="form-control deadline" name="firstDate"  style="width: 150px;" value="<?= $firstDate; ?>" placeholder="2019-10-30" id="deadline"/>
							</div>
							<span class="mr-1">-</span> 
							<div class="input-group">
								<div class="input-group-prepend">
									<div class="input-group-text"><i class="fa fa-calendar"></i></div>
								</div>
								<input type="text" class="form-control deadline" name="lastDate"  style="width: 150px;" value="<?= $lastDate; ?>" placeholder="2019-10-30" id="deadline"/>
							</div>
							<div class="input-group ml-1">
								<button type="submit" name="submit" class="btn btn-primary">Show data <i class="fa fa-long-arrow-right"></i></button>
							</div>
						</div>
						<div class="mt-1 row">
							<div class="col">
								<form action="" id="urutan" method="post">
									<select id="inputState" name="urutkan" class="form-control form-control-sm">
										<option value="<?= $dataurut; ?>" selected><?= $dataurut; ?></option>
										<option value="<?= $dataurut2; ?>"><?= $dataurut2; ?></option>
									</select>
								</form>
							</div>
							<div class="col">
								
							</div>
						</div>
					</div>
					<div class="col">
						<p class="m-0">Show data : <strong><?= $dataTampil; ?></strong></p>
						<p class="m-0">Total amount of data : <strong><?= $jumlahdata; ?></strong></p>
						<a class="btn btn-sm btn-primary" href="#" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-eye"></i> Show graph</a>
					</div>
					<div class="col">
						<p class="m-0">Last update : 
							<?php $data = mysqli_query($connect,"SELECT * FROM data_suhu ORDER BY id DESC LIMIT 1");
							while($lastupdate = mysqli_fetch_array($data)){
								echo $lastupdate['waktu'];
							} ?>

						</p>
						<p class="m-0">Data : <strong><a href="javascript:location.reload(true)"><i class="fa fa-refresh"></i> refresh data</a></strong></p>
					</div>
					<div class="col">
						<div>
							<a href="export.php?firstDate=<?= $firstDate; ?>&lastDate=<?= $lastDate; ?>&urutan=<?= $urutan; ?>&batas=<?= $batas; ?>" class="btn btn-success" style="border-radius: 0; padding: 2px 10px;"><i class="fa fa-file-excel-o"></i> Export this data</a>
						</div>
						<div>
							<a href="exportall.php" class="btn btn-success mt-2" style="border-radius: 0; padding: 2px 10px;"><i class="fa fa-file-excel-o"></i> Export all data</a>
						</div>
						
					</div>
				</div>
			</form>
		</div>
	</div>
	<div class="m-2">
		<table class="table">
			<thead class="thead-light">
				<tr>
					<th>No</th>
					<th>Date</th>
					<th>Time</th>
					<th>Metex</th>
					<th>NaOH</th>
					<th>Anodize 1</th>
					<th>Anodize 2</th>
					<th>Coloring</th>
					<th>Sealing selt</th>
					<th>Nickle plate 1</th>
					<th>Nickle plate 2</th>
					<th style="display: none;">id</th>
				</tr>
			</thead>
				<!-- <thead class="thead-light">
					<tr>
						<th>
						</th>
						<th>
							<form action="" method="post">
								<select id="inputState" name="urutkan" class="form-control form-control-sm">
									<option value="<?= $dataurut; ?>" selected><?= $dataurut; ?></option>
									<option value="<?= $dataurut2; ?>"><?= $dataurut2; ?></option>
								</select>
							</form>
						</th>
						<th></th>
						<th>
							<a class="badge badge-primary" href="#" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-eye"></i> Graph</a>
						</th>
						<th>
							<a class="badge badge-primary" href="#" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-eye"></i> Graph</a>
						</th>
						<th>
							<a class="badge badge-primary" href="#" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-eye"></i> Graph</a>
						</th>
						<th>
							<a class="badge badge-primary" href="#" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-eye"></i> Graph</a>
						</th>
						<th>
							<a class="badge badge-primary" href="#" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-eye"></i> Graph</a>
						</th>
						<th>
							<a class="badge badge-primary" href="#" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-eye"></i> Graph</a>
						</th>
						<th>
							<a class="badge badge-primary" href="#" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-eye"></i> Graph</a>
						</th>
						<th>
							<a class="badge badge-primary" href="#" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-eye"></i> Graph</a>
						</th>
						<th>

						</th>

						<th style="display: none;">id</th>
					</tr>
				</thead> -->
				<?php 
				$no = 1;
				$data = mysqli_query($connect,"SELECT * FROM data_suhu WHERE waktu BETWEEN '$firstDate' AND '$lastDate' ORDER BY waktu $urutan, time $urutan $batas");
				while($d = mysqli_fetch_array($data)){
					?>
					<tbody>
						<tr>
							<td><?php echo $no++; ?></td>
							<td><?php echo $d['waktu']; ?></td>
							<td><?php echo $d['time']; ?></td>
							<td><?php echo $d['suhu1']; ?>&deg;</td>
							<td><?php echo $d['suhu2']; ?>&deg;</td>
							<td><?php echo $d['suhu3']; ?>&deg;</td>
							<td><?php echo $d['suhu4']; ?>&deg;</td>
							<td><?php echo $d['suhu5']; ?>&deg;</td>
							<td><?php echo $d['suhu6']; ?>&deg;</td>
							<td><?php echo $d['suhu7']; ?>&deg;</td>
							<td><?php echo $d['suhu8']; ?>&deg;</td>

						</tr>
					</tbody>
					<?php 
				}
				?>
			</table>

		</div>
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.0/js/bootstrap.min.js" integrity="sha384-7aThvCh9TypR7fIc2HV4O/nFMVCBwyIUKL8XCtKE+8xgCgl/PQGuFsvShjr74PBp" crossorigin="anonymous"></script>
		<script type="text/javascript">
			$('.deadline').datepicker({
				format: 'yyyy-mm-dd',
				orientation: 'bottom left',

			});

		</script>

	</body>
	</html>