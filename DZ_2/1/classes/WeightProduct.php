<?php

class WeightProduct extends BaseProduct {

	protected function getPrice() {
		return $this->finalPrice() . " р/кг";
	}

	protected function getProfit() {
		return $this->profit();
	}
}
