<?php
const DB_DRIVER = "mysql";
const SERVER = "localhost";
const DB_NAME = "pc_shop";
const LOGIN = "root";
const PASSWORD = "";
const CHARSET = 'utf8';

$dsn = DB_DRIVER . ':host=' . SERVER . ';dbname=' . DB_NAME .';charset=' . CHARSET;
$opt = [
		PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
		PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
];

$pdo = new PDO($dsn, LOGIN, PASSWORD, $opt);