<?php

require_once('connection.php');

$query = "SELECT * FROM barang ORDER BY kode_item DESC";
$sql = mysqli_query($db_connect, $query);

if ($sql) {
  $result = array();
  while ($row = mysqli_fetch_array($sql)) {
    array_push($result, array(
      'kode_item' => $row['kode_item'],
      'barang' => $row['barang'],
      'jenis' => $row['jenis'],
      'hargaumum' => $row['hargaumum'],
      'hargagrosir' => $row['hargagrosir'],

    ));
  }
  echo json_encode(array('data' => $result));
}

~~~~~~~~~~~~~~~~~~~ Atau ~~~~~~~~~~~~~~~~~~~

<?php 

$connection = new mysqli("localhost","root","","akrab_main");
$data       = mysqli_query($connection, "select * from pengguna");
$data       = mysqli_fetch_all($data, MYSQLI_ASSOC);

// echo json_encode($data);
echo json_encode(array('data' => $data));