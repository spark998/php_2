<?php
//
// Контроллер страницы чтения.
//
include_once('m/M_User.php');

class C_User extends C_Base
{
	//
	// Конструктор.
	//
	public function action_reg(){
		$this->title .= ':Регистрация';
        $user = new M_User();
		$info = "Пользователь не зарегистрирован";
        if($_POST){
			$name = $_POST['name'];
			$login = $_POST['login'];
			$pass = $_POST['password'];
			$info = $user->reg($name, $login, $pass);
		    $this->content = $this->Template('v/v_reg.php', array('text' => $info));
		}
		else{
		   $this->content = $this->Template('v/v_reg.php');
		}
	}

	public function action_auth(){
		$this->title .= ':Авторизация';
        $user = new M_User();
		$info = "Пользователь не авторизован";
        if($_POST){
			$login = $_POST['login'];
			$pass = $_POST['password'];
			$info = $user->auth($login, $pass);
		    $this->content = $this->Template('v/v_auth.php', array('text' => $info));
		}
		else{
		   $this->content = $this->Template('v/v_auth.php');
		}
	}
	
}
