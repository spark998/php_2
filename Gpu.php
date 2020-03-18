<?php
include_once "Product.php";

class Gpu extends Product {
	private $frequency;
	private $videoMemory;
	private $videoConnectors;

	function __construct($title, $price, $id, $frequency, $videoMemory, $videoConnectors) {
		parent::__construct($title, $price, $id);
		$this->frequency = $frequency;
 		$this->videoMemory = $videoMemory;
		$this->videoConnectors = $videoConnectors;
	}

	public function getProduct() {
		$out = parent::getProduct();
		$out .= "Турбочастота: {$this->frequency}<br>
				 Объем видеопамяти: {$this->videoMemory}<br>
				 Видео разъемы: {$this->videoConnectors}<br>";
		return $out;
	}
}