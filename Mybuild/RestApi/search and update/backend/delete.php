<?php

require_once('connection.php');
parse_str(file_get_contents('php://input'),$value);

$kode_item =$value['kode_item'];


$query = "DELETE FROM barang WHERE kode_item='$kode_item' ";
$sql = mysqli_query($db_connect,$query);

if ($sql){
   
    echo json_encode (array('message'=> 'BERHASIL HAPUS BRO!'));
} else {
    echo json_encode (array('message'=> 'gagal!'));
}
?>