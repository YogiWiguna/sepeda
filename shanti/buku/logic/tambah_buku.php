<?php
include 'koneksi.php';

$judul = $_POST['judul'];
$isi = $_POST['isi'];

mysqli_query($conn,"INSERT INTO `t_buku`(`judul`, `isi`) VALUES ('$judul','$isi')");
header("Location: ../admin.php");
?>
