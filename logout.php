<?php 
// hapus sesi yg aktif
session_start();
session_destroy();
header('location: login.php');

?>