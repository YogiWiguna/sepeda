<?php include('layouts/header.php') ?>
<div class="container mt-5 mb-5">
<h1 class="mb-5">Baca buku yang anda sukai</h1>
  <div class="row">
<?php 
$result = mysqli_query($conn,"select * from t_buku");
while($data = mysqli_fetch_array($result)){
?>
    <div class="col-sm-4 mb-3">
      <div class="card">
        <div class="card-body">
        <h5 class="card-title text-truncate"><?=$data['judul']?></h5>
        <p class="card-text text-truncate"><?=$data['isi']?></p>
        <a href="lihat.php?id=<?=$data['id']?>" class="btn btn-primary">lihat lebih lengkap</a>
        </div>
      </div>
    </div>
<?php } ?>
  </div>
</div>
<?php include('layouts/footer.php') ?>
