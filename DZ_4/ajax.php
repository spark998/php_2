<?php
include "config.php";

$countView = (int)$_POST['count_add'];  // количество записей, получаемых за один раз
$startIndex = (int)$_POST['count_show']; // с какой записи начать выборку

$res = $pdo->query("SELECT * FROM `goods` LIMIT $startIndex, $countView");


while($row = $res->fetch()){
    $data[] = $row;
}
 
if(empty($data)){
    // если товара нет
    echo json_encode(array(
        'result'    => 'finish'
    ));
}else{
    // если товар получен из базы, то сформируем html элементы и отдадим их клиенту
    $html = "";
    foreach($data as $oneGood){
        $html .= <<<HTML
		<div class="product">
			<div class="img-box">
				<a class="product-link" target="_blank" href="productCard.php?id={$oneGood['id']}">
					<img class="img-product" src="{$oneGood['img']}" alt="photo">
				</a>
				<span class="product-id">{$oneGood['id']}</span>
			</div>
			<div class="product-info">
				<div class="title-product">
					<a class="ui-link" target="_blank" href="productCard.php?id={$oneGood['id']}">{$oneGood['nameProduct']}</a>
				</div>
				<div class="description">
					{$oneGood['description']}
				</div>
			</div>
			<div class="product-price">
				{$oneGood['price']} p
			</div>
		</div>
HTML;
    }
    echo json_encode(array(
        'result'    => 'success',
        'html'      => $html
    ));
}