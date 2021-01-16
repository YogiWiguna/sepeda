<?php include('layouts/header.php') ?>
<div class="container d-flex justify-content-center mt-5 mb-5">
<div class="card" style="width: 20rem;">
  <div class="card-body">
   <h5 class="card-title">Please Login</h5>
   
    <form method="post" action="logic/cek_login.php">
<?php if(isset($_GET['msg']) && $_GET['msg'] == "gagal"){ ?>
<div class="alert alert-danger" role="alert">
  nim atau password salah!
</div>
<?php }else if(isset($_GET['msg']) && $_GET['msg'] == "belum_login"){ ?>
<div class="alert alert-danger" role="alert">
  anda belum login!
</div>
<?php } ?>

      <div class="form-group">
        <input type="number" class="form-control" name="nim">
      </div>
      <div class="form-group">
        <input type="password" class="form-control" name="password">
      </div>
      <button type="submit" class="btn btn-primary">Login</button>
    </form>
  </div>
</div>
</div>
<?php include('layouts/footer.php') ?>
