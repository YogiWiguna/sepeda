<?php include('layouts/header.php') ?>
<div class="container mt-5 mb-5">
  <div class="card">
    <div class="card-body">
      <h5 class="card-title font-weight-bold">master sepeda</h5>
      <form class="mt-4" action="logic/tambah_buku.php" method="post">
      <div class="form-group">
        <label for="exampleInputEmail1">kode sepeda</label>
        <input type="text" class="form-control" name="judul">
      </div>
     <div class="form-group">
        <label for="exampleInputEmail1">nama sepeda</label>
        <input type="text" class="form-control" name="judul">
      </div>
      <div class="form-group">
        <label for="exampleInputEmail1">merk sepeda</label>
        <input type="text" class="form-control" name="judul">
      </div>
      <div class="form-group">
        <label for="exampleInputEmail1">jenis sepeda</label>
        <input type="text" class="form-control" name="judul">
      </div>
    <div class="form-group">
        <label for="exampleInputEmail1">peruntukan</label>
  <select class="form-control">
  <option>pria</option>
  <option>wanita</option>
</select>
</div>
      <div class="form-group">
        <label for="exampleInputEmail1">jumlah speed</label>
        <input type="text" class="form-control" name="judul">
      </div>
      <div class="form-group">
        <label for="exampleInputEmail1">tanggal lauching</label>
        <input type="date" class="form-control" name="judul">
      </div>
      <button type="submit" class="btn btn-primary">Submit</button>
      </form>
    </div>
  </div>
<!-- ISI sepeda -->
  <div class="row mt-5">
<?php 
$result = mysqli_query($conn,"select * from sepeda");
while($data = mysqli_fetch_array($result)){
?>
    <div class="col-sm-4 mb-3">
      <div class="card">
        <div class="card-body">
        <h5 class="card-title text-truncate"><?=$data['kode sepeda']?></h5>
        <p class="card-text text-truncate"><?=$data['nama sepeda']?></p>
         <p class="card-text text-truncate"><?=$data['merk sepeda']?></p>
          <p class="card-text text-truncate"><?=$data['jenis sepeda']?></p>
           <p class="card-text text-truncate"><?=$data['peruntukan']?></p>
            <p class="card-text text-truncate"><?=$data['jumlah speed']?></p>
             <p class="card-text text-truncate"><?=$data['tanggal lauching']?></p>
        <a href="edit.php?id=<?=$data['id']?>" class="btn btn-primary">update</a>
        <a href="logic/delete.php?id=<?=$data['id']?>" class="btn btn-danger">delete</a>
        </div>
      </div>
    </div>
<?php } ?>
  </div>
<!-- ISI sepeda -->

</div>
<?php include('layouts/footer.php') ?>
