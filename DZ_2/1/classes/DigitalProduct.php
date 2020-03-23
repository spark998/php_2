<?php

class DigitalProduct extends PhysicalGoods {

	protected function finalPrice() {
		$out = parent::finalPrice();
		$out /= 2;
		return  $out;
	}
}