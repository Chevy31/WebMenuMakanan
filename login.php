<?php
include 'conn.php';

if(isset($_POST['submit'])) {
    $login = $_POST['username'];
    $password = $_POST['password'];
  
    // Query untuk memilih tabel
    $cek_data = mysqli_query($koneksi, "SELECT * FROM login WHERE username = '$login' AND password = '$password'");
    $hasil = mysqli_fetch_array($cek_data);
    $status = $hasil['status'];
    $login_user = $hasil['username'];
    $row = mysqli_num_rows($cek_data);
  
    // Pengecekan Kondisi Login Berhasil/Tidak
      if ($row > 0) {
          session_start();   
          $_SESSION['login_user'] = $login_user;
  
          if ($status == 'admin') {
            header('location: admin_menu.php');
          }elseif ($status == 'user') {
            header('location: user.php'); 
          }
      }else{
          header("location: login.php");
      }
  }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="fontawesome/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <title>Login Page</title>
</head>
<body>
    <div class="container">
    <h4 class="text-center">LOGIN</h4>
    <hr>
    <form method="POST" action="">
        <div>
        <div class="form-group">
          <label for="InputEmail1">Username</label>
            <div class="input-group">
              <div class="input-group-prepend">
                <div class="input-group-text"><i class="fas fa-user"></i></div>
              </div>
              <input type="text" class="form-control" placeholder="Masukkan Username" name="username">
            </div>
        </div>
        <div class="form-group">
          <label for="InputPassword">Password</label>
            <div class="input-group">
              <div class="input-group-prepend">
                <div class="input-group-text"><i class="fas fa-unlock-alt"></i></div>
              </div>
              <input type="password" class="form-control" placeholder="Masukkan Password" name="password">
          </div>
        </div>
        <div class="mb-3" >
          <small><a href="" class="text-dark"> Buat Akun</a></small>
        </div>
        <button type="submit" name="submit" class="btn btn-primary">LOGIN</button>
        <button type="reset" name="reset" class="btn btn-danger">RESET</button>
        </div>
    </form>
    </div>
</body>

</html>