<?php
spl_autoload_register(function($className){
	include_once "classes/$className.php";
});

echo "штучный товар ";
$obj = new PhysicalGoods(2100, 3);
$obj->print();
echo "<hr>";

echo "цифровой товар ";
$obj1 = new DigitalProduct(2100, 3);
$obj1->print();
echo "<hr>";

echo "весовой товар ";
$obj2 = new WeightProduct(2100, 3);
$obj2->print();
