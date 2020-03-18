<?php
include_once "Product.php";

class Cpu extends Product {
	private $socket;
	private $core;
	private $cacheSize;

	function __construct($title, $price, $id, $socket, $core, $cacheSize) {
		parent::__construct($title, $price, $id);
		$this->socket = $socket;
		$this->core = $core;
		$this->cacheSize = $cacheSize;
	}

	public function getProduct() {
		$out = parent::getProduct();
		$out .= "Сокет: {$this->socket}<br>
				 Количество ядер: {$this->core}<br>
				 Объем кэша L3: {$this->cacheSize}<br>";
		return $out;
	}
}