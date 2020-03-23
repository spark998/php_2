<?php

class PhysicalGoods extends BaseProduct {

	protected function getPrice() {
		return $this->finalPrice() . " р/шт.";
	}

	protected function getProfit() {
		return $this->profit();
	}
}



