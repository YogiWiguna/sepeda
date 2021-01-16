<?php include('layouts/header.php') ?>
<div class="container mt-5 mb-5">
  <div class="card">
    <div class="card-body">
      <h5 class="card-title font-weight-bold">master sepeda</h5>
      <form class="mt-4" action="logic/tambah_sepeda.php" method="post">
      <div class="form-group">
        <label for="exampleInputEmail1">kode sepeda</label>
        <input type="text" class="form-control" name="kode" required>
      </div>
     <div class="form-group">
        <label for="exampleInputEmail1">nama sepeda</label>
        <input type="text" class="form-control" name="nama" required>
      </div>
      <div class="form-group">
        <label for="exampleInputEmail1">merk sepeda</label>
        <input type="text" class="form-control" name="merek" required>
      </div>
      <div class="form-group">
        <label for="exampleInputEmail1">jenis sepeda</label>
        <input type="text" class="form-control" name="jenis" required>
      </div>
    <div class="form-group">
        <label>Peruntukan</label>
        <select class="custom-select mb-3" name="peruntukan" required>
            <option value="laki-laki">Laki - Laki</option>
            <option value="perempuan">Perempuan</option>
        </select>
    </div>
      <div class="form-group">
        <label for="exampleInputEmail1">jumlah speed</label>
        <input type="text" class="form-control" name="jumlah" required>
      </div>
      <div class="form-group">
        <label for="exampleInputEmail1">tanggal lauching</label>
        <input type="date" class="form-control" name="tanggal" required>
      </div>
      <button type="submit" class="btn btn-primary">Submit</button>
      </form>
    </div>
  </div>
<!-- ISI sepeda -->
  <div class="row mt-5">
<?php 
$result = mysqli_query($conn,"select * from sepeda");
while($data = mysqli_fetch_assoc($result)){
?>
    <div class="col-sm-4 mb-3">
      <div class="card">
        <div class="card-body">
        <h4 class="card-title text-truncate">Kode: <?=$data['kode']?></h4>
        <p class="card-text text-truncate">Nama Sepeda: <?=$data['nama']?></p>
         <p class="card-text text-truncate">Merek Sepeda: <?=$data['merek']?></p>
          <p class="card-text text-truncate">Jenis Sepeda: <?=$data['jenis']?></p>
           <p class="card-text text-truncate">Peruntukan: <?=$data['peruntukan']?></p>
            <p class="card-text text-truncate">Jumlah Speed: <?=$data['jumlah']?></p>
             <p class="card-text text-truncate">Tanggal Launching: <?=$data['tanggal']?></p>
        <a href="editsepeda.php?kode=<?=$data['kode']?>" class="btn btn-primary">update</a>
        <a href="logic/delete_sepeda.php?kode=<?=$data['kode']?>" class="btn btn-danger">delete</a>
        </div>
      </div>
    </div>
<?php } ?>
  </div>
<!-- ISI sepeda -->

</div>
<?php include('layouts/footer.php') ?>
