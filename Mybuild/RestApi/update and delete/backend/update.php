<?php

$connection         = new mysqli("localhost", "root", "", "akrab_main");
$kode_item             = $_POST['kode_item'];
$barang             = $_POST['barang'];
$jenis              = $_POST['jenis'];
$hargaumum          = $_POST['hargaumum'];
$hargagrosir        = $_POST['hargagrosir'];

$result = mysqli_query($connection, "update barang set barang='$barang', jenis='$jenis', hargaumum='$hargaumum', hargagrosir='$hargagrosir' where kode_item='$kode_item'");

if ($result) {
    echo json_encode([
        'message' => 'Data edit successfully'
    ]);
} else {
    echo json_encode([
        'message' => 'Data Failed to update'
    ]);
}
