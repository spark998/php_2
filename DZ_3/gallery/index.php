<?php

$host = 'localhost';
$db = 'gallery2';
$user = 'root';
$pass = '';
$charset = 'utf8';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$opt = [
	PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
	PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
];

$pdo = new PDO($dsn, $user, $pass, $opt);

$res = $pdo->query('SELECT * FROM images');
while ($row = $res->fetch()) {
	$img[] = $row;
}

include 'Twig/Autoloader.php';
Twig_Autoloader::register();

try {
	$loader = new Twig_Loader_Filesystem('templates');

	$twig = new Twig_Environment($loader);

	$template = $twig->loadTemplate('baseTemplate.tmpl');

	echo $template->render(array (
		'title' => 'Галерея',
		'img' => $img
	));
} catch (Exception $e) {
	die ('ERROR: ' . getMessage());
}

