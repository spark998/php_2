<?php
include "config.php";

$id = $_GET['id'];
$res= $pdo->query("SELECT * FROM `goods` WHERE id='$id'");

while ($row = $res->fetch()) {
	$data = $row;
}
