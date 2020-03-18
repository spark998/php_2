<?php
include_once "Product.php";

class Motherboard extends Product {
	private $formFactor;
	private $chipset;
	private $memoryType;

	function __construct($title, $price, $id, $formFactor, $chipset, $memoryType) {
		parent::__construct($title, $price, $id);
		$this->formFactor = $formFactor;
		$this->chipset = $chipset;
		$this->memoryType = $memoryType;
	}

	public function getProduct() {
		$out = parent::getProduct();
		$out .= "Форм-фактор: {$this->formFactor}<br>
				 Чипсет: {$this->chipset}<br>
				 Тип поддерживаемой памяти: {$this->memoryType}<br>";
		return $out;
	}
}