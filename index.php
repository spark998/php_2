<?php
include_once "Product.php";
include_once "Cpu.php";
include_once "Motherboard.php";
include_once "Gpu.php";

$cpu = new Cpu("Процессор AMD Ryzen 9 3900X", 48999, 1373489, "AM4", 12, "64 МБ");
echo $cpu->getProduct() . "<br>";

$motherboard = new Motherboard("Материнская плата GIGABYTE X570 AORUS MASTER", 35699, 1373545, "Standard-ATX", "AMD X570", "DDR4");
echo $motherboard->getProduct() . "<br>";

$gpu = new Gpu("Видеокарта Gigabyte GeForce RTX 2080 Ti AORUS XTREME", 113999, 1379545, "1770 МГц", "11 ГБ", "HDMI (3 шт), USB-C, DisplayPort (3 шт)");
echo $gpu->getProduct() . "<br>";


//Задание №6
//class A {
//    public function foo() {
//        static $x = 0;
//        echo ++$x;
//    }
//}
//class B extends A {
//}
//$a1 = new A();
//$b1 = new B();
//$a1->foo(); //выведет 1
//$b1->foo(); //выведет 1
//$a1->foo(); //выведет 2
//$b1->foo(); //выведет 2

/*Для класса А и В созданы 2 разных объект. 
Вызываем  метод foo() для объекта $а1, получаем $x=1 для класса А. 
Вызываем  метод foo() для объекта $b1, получаем $x=1 для класса В. 
При повторном вызове метода foo() для объекта $a1 и b1 переменная $x=2,  так как статические свойства привязаны к классу.*/


//Задание №7
//class A {
//    public function foo() {
//        static $x = 0;
//        echo ++$x;
//    }
//}
//class B extends A {
//}
//$a1 = new A;
//$b1 = new B;
//$a1->foo(); // 1
//$b1->foo(); // 1
//$a1->foo(); // 2
//$b1->foo(); // 2

/*
Класс В наследует метод foo() класса А.
Создается объект $а1 для класса А.
Создается объект $b1 для класса B.
Вызываем  метод foo() для объекта $а1, получаем $x=1 для класса А. 
Вызываем  метод foo() для объекта $b1, получаем $x=1 для класса В. 
При повторном вызове метода foo() для объекта $a1 и b1 переменная $x=2,  так как статические свойства привязаны к классу.*/