<?php 

include('conn.php');

$id_menu = $_GET['id_menu'];

$hapus= mysqli_query($koneksi, "DELETE FROM menu WHERE id_menu='$id_menu'");

if($hapus)
	header('location: admin_menu.php');
else
	echo "Hapus data gagal";

 ?>