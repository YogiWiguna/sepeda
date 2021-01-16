<?php
include 'koneksi.php';
session_start();

$nim = $_POST['nim'];
$password = $_POST['password'];
$result = mysqli_query($conn,"select * from mahasiswa where nim = $nim and password = $password");
$data = mysqli_num_rows($result);
echo $data->nim;
if($data > 0){
  $_SESSION['nim'] = $nim;
  $_SESSION['status'] = "login";
  header("Location: ../index.php");
}else
  header("Location: ../login.php?msg=gagal");
?>
