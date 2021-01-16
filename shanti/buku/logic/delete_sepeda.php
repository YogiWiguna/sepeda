<?php
include 'koneksi.php';
$kode = $_GET['kode'];
mysqli_query($conn,"DELETE FROM sepeda WHERE kode = '$kode'");
header("Location: ../sepeda.php");
?>
