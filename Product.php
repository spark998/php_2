<?php

class Product {
	private $title;
	private $price;
	private $id;

	function __construct($title, $price, $id) {
		$this->title = $title;
		$this->price = $price;
		$this->id = $id;
	}

	public function getTitle() {
		return $this->title;
	}
	public function getPrice() {
		return $this->price;
	}
	public function getId() {
		return $this->id;
	}

	public function getProduct() {
		return " Название: {$this->title}<br>
				 Цена: {$this->price}<br>
				 Код товара: {$this->id}<br>";
	}
}


