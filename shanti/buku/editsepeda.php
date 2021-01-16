<?php 
include('layouts/header.php');
$kode = $_GET['kode'];
$q = "SELECT * FROM sepeda WHERE kode='$kode'";
$result = mysqli_query($conn, $q);
$data = mysqli_fetch_object($result);
?>
<div class="container mt-5 mb-5">
  <div class="card">
    <div class="card-body">
      <h5 class="card-title font-weight-bold">master sepeda</h5>
      <form class="mt-4" action="logic/update_sepeda.php?kode=<?= $kode ?>" method="post">
      <div class="form-group">
        <label for="exampleInputEmail1">kode sepeda</label>
        <input type="text" class="form-control" name="kode" disabled value="<?= $data->kode ?>">
      </div>
     <div class="form-group">
        <label for="exampleInputEmail1">nama sepeda</label>
        <input type="text" class="form-control" name="nama" required value="<?= $data->nama ?>">
      </div>
      <div class="form-group">
        <label for="exampleInputEmail1">merk sepeda</label>
        <input type="text" class="form-control" name="merek" required value="<?= $data->merek ?>">
      </div>
      <div class="form-group">
        <label for="exampleInputEmail1">jenis sepeda</label>
        <input type="text" class="form-control" name="jenis" required value="<?= $data->jenis ?>">
      </div>
    <div class="form-group">
        <label>Peruntukan</label>
        <select class="custom-select mb-3" name="peruntukan" required value="<?= $data->peruntukan ?>">
            <option <?php if(strcmp($data->peruntukan, "laki-laki") == 0) echo 'selected' ?> value="laki-laki">Laki - Laki</option>
            <option <?php if(strcmp($data->peruntukan, "perempuan") == 0) echo 'selected' ?> value="perempuan">Perempuan</option>
        </select>
    </div>
      <div class="form-group">
        <label for="exampleInputEmail1">jumlah speed</label>
        <input type="text" class="form-control" name="jumlah" required value="<?= $data->jumlah ?>">
      </div>
      <div class="form-group">
        <label for="exampleInputEmail1">tanggal lauching</label>
        <input type="date" class="form-control" name="tanggal" required value="<?= $data->tanggal ?>">
      </div>
      <button type="submit" class="btn btn-primary">Submit</button>
      </form>
    </div>
  </div>
<!-- ISI sepeda -->
  
<!-- ISI sepeda -->

</div>
<?php include('layouts/footer.php') ?>
