<?php
include 'koneksi.php';

$nama = $_POST['nama'];
$kode = $_POST['kode'];
$merek = $_POST['merek'];
$jenis = $_POST['jenis'];
$peruntukan = $_POST['peruntukan'];
$jumlah = $_POST['jumlah'];
$tanggal = $_POST['tanggal'];
$q = "INSERT INTO sepeda VALUES ('$kode', '$nama','$merek', '$jenis', '$peruntukan', '$jumlah', '$tanggal')";
$result = mysqli_query($conn, $q);
header("Location: ../sepeda.php");

?>
