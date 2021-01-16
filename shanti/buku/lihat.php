<?php include('layouts/header.php') ?>
<?php
$id = $_GET['id'];
$result = mysqli_query($conn,"select * from t_buku where id = $id");
$data = mysqli_fetch_object($result);
?>
<div class="jumbotron jumbotron-fluid">
  <div class="container">
  <h1 class="display-4"><?=$data->judul?></h1>
  <p class="lead text-justify"><?=$data->isi?></p>
  </div>
</div>
<?php include('layouts/footer.php') ?>
