<?php
require_once('connection.php');
$barang =$_POST['barang'];
$barcode =$_POST['barcode'];
$idsatuan=$_POST['idsatuan'];
$jenis=$_POST['jenis'];
$hargaumum=$_POST['hargaumum'];
$hargagrosir=$_POST['hargagrosir'];
$id=$_POST['id'];
$qty=$_POST['qty'];

$query = "INSERT INTO barang(barang,barcode,idsatuan,jenis,hargaumum,hargagrosir,id,qty) VALUES('$barang','$barcode','$idsatuan','$jenis','$hargaumum','$hargagrosir','$id','$qty')";
$sql = mysqli_query($db_connect,$query);

if ($sql){
   
    echo json_encode (array('message'=> 'BERHASIL DIBUAT!'));
} else {
    echo json_encode (array('message'=> 'gagal!'));
}
?>