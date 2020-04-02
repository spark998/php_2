<?=$text?>

<form class="form-reg" action="#" method="POST" enctype="multipart/form-data">
	<p>Имя: <input class="input" type="text" name="name" maxlength="30" placeholder="Введите Имя" autofocus required></p>
    <p>Логин: <input class="input" type="text" name="login" maxlength="30" placeholder="Введите Логин" required></p>
    <p>Пароль: <input class="input" type="password" minlength="2" name="password" placeholder="Введите Пароль" required></p>
    <input class="reg-btn" type="submit" name="submit" value="Зарегистрироваться">
</form>
