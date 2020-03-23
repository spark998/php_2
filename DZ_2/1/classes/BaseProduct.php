<?php

 abstract class BaseProduct {
	private $price;
	private $count;

	function __construct($price, $count) {
		$this->price = $price;
		$this->count = $count;
	}

	public function getCount() {
		return $this->count;
	}

	protected function finalPrice() {
		return $this->price;
	}

	protected function profit() {
		$res = $this->finalPrice() * $this->count;
		$res = "<br> Всего: " . $res . "р";
		return $res;
	}

	abstract protected function getPrice();
	abstract protected function getProfit();

	public function print(){
		echo $this->getPrice();
		echo $this->getProfit();
	}
}

