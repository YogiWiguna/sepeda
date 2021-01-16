<?php include('layouts/header.php') ?>
<div class="container mt-5 mb-5">
  <div class="card">
    <div class="card-body">
      <h5 class="card-title font-weight-bold">Tambah Buku</h5>
      <form class="mt-4" action="logic/tambah_buku.php" method="post">
      <div class="form-group">
        <label for="exampleInputEmail1">Judul Buku</label>
        <input type="text" class="form-control" name="judul">
      </div>
      <div class="form-group">
        <label for="exampleFormControlTextarea1">Isi</label>
        <textarea class="form-control" rows="3" name="isi"></textarea>
      </div>
      <button type="submit" class="btn btn-primary">Submit</button>
      </form>
    </div>
  </div>
<!-- ISI BUKU -->
  <div class="row mt-5">
<?php 
$result = mysqli_query($conn,"select * from t_buku");
while($data = mysqli_fetch_array($result)){
?>
    <div class="col-sm-4 mb-3">
      <div class="card">
        <div class="card-body">
        <h5 class="card-title text-truncate"><?=$data['judul']?></h5>
        <p class="card-text text-truncate"><?=$data['isi']?></p>
        <a href="edit.php?id=<?=$data['id']?>" class="btn btn-primary">update</a>
        <a href="logic/delete.php?id=<?=$data['id']?>" class="btn btn-danger">delete</a>
        </div>
      </div>
    </div>
<?php } ?>
  </div>
<!-- ISI BUKU -->

</div>
<?php include('layouts/footer.php') ?>
