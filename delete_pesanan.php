<?php 

include('conn.php');

$id = $_GET['id'];

$hapus= mysqli_query($koneksi, "DELETE FROM list WHERE id_pesan='$id'");

if($hapus)
	header('location: list_pesanan.php');
else
	echo "Hapus data gagal";

 ?>