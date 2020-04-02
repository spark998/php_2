<?
class M_User {

	public function __construct($db = 'pc_shop', $username = 'root', $password = '', $host = 'localhost', $options = []) {
        $default_options = [
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
            PDO::ATTR_EMULATE_PREPARES => false,
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        ];
        $options = array_replace($default_options, $options);
        $dsn = "mysql:host=$host;dbname=$db;charset=utf8";

        try {
            $this->pdo = new PDO($dsn, $username, $password, $options);
        } catch (PDOException $e) {
            throw new PDOException($e->getMessage(), (int)$e->getCode());
        }
	}
	
    public function run($sql, $args = NULL) {
        if (!$args) {
            return $this->pdo->query($sql);
        }
		$stmt = $this->pdo->prepare($sql);
		$stmt->execute($args);
        return $stmt;
    }
	
    public function getUsers() {
        $sql = 'SELECT * FROM `users`';
        return $this->run($sql)->fetchAll();
	}

	public function newUser($name, $login, $pass) {
		$data = ['name' => $name, 'login' => $login, 'password' => $pass];
        $sql = "INSERT INTO `users` (name, login, password) VALUES (:name, :login, :password)";
		$this->run($sql, $data);
		return true;
	}

	//регистрация
	public function reg($name, $login, $pass){

		$name = trim(strip_tags($name));
		$login = trim(strip_tags($login));
		
		if (strtolower($login) == 'admin') {
			return "Логин админа нельзя зарегистрировать!";
		}
	
		$user = $this->getUsers();

		foreach ($user as $item) {
			if ($login == $item[login]) {
				return "Такой логин уже есть!";
			}
		}
	
		$pass = trim(strip_tags($pass));
	
		$this->newUser($name, $login, md5($pass));
	
		$message = "Вы зарегистрированы!";
		return $message;
	}
	
	//авторизация
	public function auth($login,$pass){

		$login = trim(strip_tags($login));
		$pass = trim(strip_tags( $pass));
	
		$user = $this->getUsers();
		
		foreach ($user as $item) {
			if ($login == $item[login] && md5($pass) == $item[password]) {
				$_SESSION[login] = $login;
				$_SESSION[pass] = $pass;
			} else {
				$message = "Не правильно ввели данные!";
			}
		}
        return $message;
	}
}