<?php
include 'koneksi.php';

$id = $_GET['id'];
$judul = $_POST['judul'];
$isi = $_POST['isi'];
mysqli_query($conn,"UPDATE t_buku SET judul = '$judul', isi = '$isi' WHERE id = $id");
header("Location: ../admin.php");
?>
