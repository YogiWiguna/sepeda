<?php
include 'koneksi.php';

$kode = $_GET['kode'];

$nama = $_POST['nama'];
$merek = $_POST['merek'];
$jenis = $_POST['jenis'];
$peruntukan = $_POST['peruntukan'];
$jumlah = $_POST['jumlah'];
$tanggal = $_POST['tanggal'];

$q = "UPDATE sepeda SET nama='$nama', merek='$merek', jenis='$jenis', peruntukan='$peruntukan', jumlah='$jumlah', tanggal='$tanggal' WHERE kode='$kode'";
$result = mysqli_query($conn, $q);
header("Location: ../sepeda.php");
?>
