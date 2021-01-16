<?php
session_start();
$conn = mysqli_connect("localhost","root","","buku");

if(strpos($_SERVER['REQUEST_URI'],'login.php') == false){
  if($_SESSION['status'] != "login")
    header("Location: login.php?msg=belum_login");

  if(isset($_SESSION['status']) && $_SESSION['status'] == "login"){
    $nim = $_SESSION['nim'];
    $result = mysqli_query($conn,"select * from mahasiswa where nim = $nim");
    $data = mysqli_fetch_object($result);
  }
}
?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <title>Buku</title>
  </head>
  <body>
    <!-- NAV -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <a class="navbar-brand" href="#">BUKU</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="buku.php">Baca Buku</a>
          </li>
          <?php if(isset($_SESSION['nim']) && $data->role == 1){ ?>
          <li class="nav-item">
            <a class="nav-link" href="admin.php">Admin</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="sepeda.php">Master sepeda</a>
          </li>
          <?php } ?>
        </ul>
          <?php if(isset($_SESSION['status']) && $_SESSION['status'] === "login"){ ?>
          <a href="logic/logout.php" class="btn btn-outline-success my-2 my-sm-0">Logout</a>
          <?php }else{ ?>
          <a href="login.php" class="btn btn-outline-success my-2 my-sm-0">Login</a>
          <?php } ?>
      </div>
    </nav>
    <!-- NAV -->
