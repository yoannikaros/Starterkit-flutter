<?php 

    $connection = new mysqli("localhost","root","","akrab_main");
    $data       = mysqli_query($connection, "select * from barang where kode_item=".$_GET['kode_item']);
    $data       = mysqli_fetch_array($data, MYSQLI_ASSOC);

    echo json_encode($data);