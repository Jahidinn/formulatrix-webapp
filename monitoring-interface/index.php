<?php
header("Refresh:120");

function bacaURL($url){
	$session = curl_init(); 
	curl_setopt($session, CURLOPT_URL, $url);
	curl_setopt($session, CURLOPT_RETURNTRANSFER, 1);
	$hasil = curl_exec($session);
	curl_close($session);
	return $hasil;
}

$host = "localhost";
$user = "root";
$pass = "";
$name = "anodize";

date_default_timezone_set("Asia/Jakarta");
$date = date("Y-m-d");
$time = date("H:i:s");

$suhu1 = bacaURL('http://10.200.0.217/1');
$suhu2 = bacaURL('http://10.200.0.217/2');
$suhu3 = bacaURL('http://10.200.0.217/3');
$suhu4 = bacaURL('http://10.200.0.217/4');
$suhu5 = bacaURL('http://10.200.0.217/5');
$suhu6 = bacaURL('http://10.200.0.217/6');
$suhu7 = bacaURL('http://10.200.0.217/7');
$suhu8 = bacaURL('http://10.200.0.217/8');

$conn = new mysqli($host, $user, $pass, $name);

if ($conn->connect_error) {
	die("Koneksi gagal: " . $conn->connect_error);
}

$sql = "INSERT INTO data_suhu VALUES ('','$date','$time','$suhu1','$suhu2','$suhu3','$suhu4','$suhu5','$suhu6','$suhu7','$suhu8')";

if ($conn->query($sql) !== TRUE) { ?>
<div style="width: 100%; font-family: sans-serif;" class="text-center">
	<div style="position: absolute;top: 10;left: 10;">
		<img src="logo.png" style="height: 30px; display: block; margin: 0 auto;">
	</div>
	<div style="position: absolute;top: 20;right: 20;">
		<img src="warning.png" style="width: 50px; display: block; margin: 0 auto;">
		<h4><span  style="color: red;">Warning!</span> Don't close this aplication</h4>
	</div>
	<img src="an.gif" style="margin: 0 auto; display: block;">
	<h4 style="text-align: center; color: #fcb125">Saving data anodize every 2 minutes ....</h4>
	<div style="position: absolute;bottom: 15; right: 0; width: 100%;">
		<h6 style="font-family: sans-serif; color: #aaa;text-align: center;">PKL UNNES 2019</h6>
	</div>
</div>

<?php
} else {
	echo "Error: ". $conn->error;
}

$conn->close();
?>