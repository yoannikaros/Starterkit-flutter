<?php

$connection = new mysqli("localhost", "root", "", "cdtdb");
$data       = mysqli_query($connection, "SELECT * FROM note JOIN halaman USING(halaman_id) where waktu={$_GET ['waktu']} and halaman_id = {$_GET['halaman_id']}");
$data       = mysqli_fetch_all($data, MYSQLI_ASSOC);

echo json_encode(array('data' => $data));
