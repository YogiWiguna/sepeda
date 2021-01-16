<?php include('layouts/header.php') ?>
<?php
$id = $_GET['id'];
$result = mysqli_query($conn,"select * from t_buku where id = $id");
$data = mysqli_fetch_object($result);
?>
<div class="container mt-5 mb-5">
  <div class="card">
    <div class="card-body">
      <h5 class="card-title font-weight-bold">Edit Buku</h5>
      <form class="mt-4" action="logic/update.php?id=<?=$data->id?>" method="post">
      <div class="form-group">
        <label for="exampleInputEmail1">Judul Buku</label>
        <input type="text" class="form-control" name="judul" value="<?=$data->judul?>">
      </div>
      <div class="form-group">
        <label for="exampleFormControlTextarea1">Isi</label>
        <textarea class="form-control" rows="3" name="isi"><?=$data->isi?></textarea>
      </div>
      <button type="submit" class="btn btn-primary">Edit</button>
      </form>
    </div>
  </div>
<?php include('layouts/footer.php') ?>
