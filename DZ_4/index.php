<?php
include "server.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="stylesheet" href="css/style.css">
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="js/script.js"></script>
	<title>Document</title>
</head>
<body>
	<header>
		<div class="container">
			<h1 class="title">PC Сomponents</h1>
		</div>
	</header>
	<div class="container">
		<div class="product-list">
		<?php	
			while($data = $res->fetch()):?>
			<div class="product">
				<div class="img-box">
					<a class="product-link" target="_blank" href="productCard.php?id=<?=$data['id']?>">
						<img class="img-product" src="<?=$data['img']?>" alt="photo">
					</a>
					<span class="product-id"><?=$data['id']?></span>
				</div>
				<div class="product-info">
					<div class="title-product">
						<a class="ui-link" target="_blank" href="productCard.php?id=<?=$data['id']?>"><?=$data['nameProduct']?></a>
					</div>
					<div class="description">
						<?=$data['description']?>
					</div>
				</div>
				<div class="product-price">
					<?=$data['price']?> p
				</div>
			</div>
			<?php
				endwhile;?>
		</div>
		<div class="btn-prod">	
			<input class="btn" id="show_more" count_show="5" count_add="5" type="button" value="Показать еще" />
		</div>
	</div>
</body>
</html>