<?php
header("Refresh:1");

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
echo $suhu1, $suhu2, $suhu3, $suhu4, $suhu5, $suhu6, $suhu7, $suhu8;
