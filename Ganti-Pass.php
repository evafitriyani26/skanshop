<?php

include "koneksi.php";

if(isset($_POST['input'])){
  $password = $_POST['password'];
  $cpassword= $_POST['cpassword'];


$data = mysqli_query($koneksi, "SELECT * FROM user WHERE password = '$email' AND cpassword = '$cpassword' ");
$data = mysqli_fetch_array($tampil);
if($data){

  if($password == $cpassword){
//proses ganti password
$pass_ok = md5($cpassword);
$ubah = mysqli_query($koneksi, "UPDATE user set password = '$pass_ok'
                                           WHERE id = '$data[id]'");

if ($ubah){
  echo "<script> alert('password anda berhasil di ubah, silahkan logout untuk menguji password baru anda.!!');
  document.location='home.php' </script>";                              
}
  }else{
    echo "<script> alert('maaf, password Baru & Konfirm Password yang anda inputkan tidak sama.!!');
    document.location='home.php' </script>";    
  }
}

}





?>
 
<!doctype html>
<html lang="en">
  <head>
    <style>
      body {height: 60vmax; background: linear-gradient(180deg, #6AC9C9 0%, #43E7FE 100%);}
      
    </style>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="regestrasi.css">
    <title>Ganti Password</title>
  </head>
  <body>
      <p><H2 class="text-center">Pilih Kata Sandi Baru</H2></p>
      <hr>
      <h6 class="text-center">Kata sandi yang kuat adalah gabungan huruf dan tanda baca.
          <br> Panjang kata sandi setidaknya 6 karakter.</h6>
  <div class="container">
  <form action = "Ganti_Pass.php" method = "post" >
  <div class="form-group">
  <label>Password Baru</label>
  <input type="text" class="form-control" name="password"  required>
  </div>
  <div class="form-group">
    <label>Confirm Password</label>
    <input type="text" class="form-control" name="cpassword"  required>
    </div>
  <div class="form-group">
  <div class="text-end mt-5">
  <a id="Login" type="login" name="bsimpan" class="btn btn-primary" href="" role="button">Lanjutkan</a>
  <a id="id" type="login" class="btn btn-danger" href="home.php" role="button">Batal</a>
  </div>
  </form>
  


    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
    -->
  </body>
</html>
</html>