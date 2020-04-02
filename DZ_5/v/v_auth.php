<?php
    if (isset($_SESSION[login]) && isset($_SESSION[pass])) {
        echo "Приветствем вас, " . $_SESSION[login];
    } else {
	echo $text ? $text : ""; ?>
	<form class="form-reg" action="#" method="POST" enctype="multipart/form-data">
	    <p>Логин: <input class="input" type="text" name="login" maxlength="30" placeholder="Введите Логин" autofocus required></p>
	    <p>Пароль: <input class="input" type="password" minlength="2" name="password" placeholder="Введите Пароль" required></p>
	    <input class="reg-btn" type="submit" name="submit" value="Войти">
	</form>
<?php } ?>