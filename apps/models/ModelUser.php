<?php

class ModelUser{
	private $tokenName = 'tokenNameTemplate';
	public $userAllow = [1,2,3];
	public 
		$token,
		$id_level,
		$id_login,
		$dataUser = []
		;

	use ApiResponse, MasterJoin ;
	
	public function logIn(){
		$username = database::filter_str($_POST['username']);
		$password = database::filter_str($_POST['password']);

		$set['set'] 	= 'id,  id_level, username, password, token';
		$set['tbl'] 	= 'tbl_login';
		$set['query']	= "WHERE username = '{$username}'";
		$set['loop']	= 'no_loop'; 

		$dataSQl = database::select($set);
		if (is_array($dataSQl) && password_verify($password, $dataSQl['password']) ):
			
			$_SESSION[$this->tokenName] = $dataSQl['token'] ;
			$this->api['href'] 	= $this->setUserControler($dataSQl['id_level']); 

			$this->api['response'] = "OK";
		else:
			$this->api['msg'] = "Username atau password salah";
		endif;
	}
	public function generateToken($uniqid=""){
		return password_hash(uniqid($uniqid), PASSWORD_DEFAULT)  ;
	}
	public function isUser(){
		if(isset($_SESSION[$this->tokenName])):
			$set 			= $this->UserJoin();

			$set['query']	= "WHERE lg.token = '{$_SESSION[$this->tokenName]}' ";
			$set['loop'] 	= 'no_loop' ;		

			$dataSQL = database::join($set);

			if(is_array($dataSQL) && in_array($dataSQL['id_level'], $this->userAllow)  ):
				$this->token 		= $dataSQL['token'];
				$this->id_level 	= $dataSQL['id_level'];
				$this->id_login 	= $dataSQL['id_login'];
				$this->dataUser 	= $dataSQL;
				return true;
			else:
				tools::redirect(BASEURL);
				$this->logout();
			endif;
		else:
			tools::redirect(BASEURL);
			$this->logout();
		endif;
	}
	public function logOut()
	{
		$_SESSION[$this->tokenName] = false;
	    tools::redirect(BASEURL);
	    exit();
	}
	private function setUserControler($id_level){
		$ret = BASEURL;
		if ($id_level == 1):
			$ret = BaseAdmin ;
		elseif ($id_level == 2):
			$ret = BaseProdi ;
		elseif ($id_level == 3):
			$ret = BaseMahasiswa ;
		else:
			$ret = BASEURL ;
		endif;

		return $ret;
	}
	
	public function upAccount(){
	if (isset($_POST['username']))
		try{
			$set['tbl'] = "tbl_login";
			$set['key']	= "id" ;
			$set['val']	= $this->id_login ;

			$set['set'] = [
				"username" 		=> $_POST['username'],
			];
			if(isset($_POST['password'])):
				$set['set']['password'] = password_hash($_POST['password'], PASSWORD_DEFAULT);
			endif;

			database::update($set);

			$this->api["response"] = "OK";
			$this->api["msg"] = "Akun anda berhasil diperbahrui !";

		} catch(PDOException $e){
			$this->api['debug'] = $e;
			$this->api["msg"] = "Username yang anda gunakan sudah terdaftar, mohon gunankan username yang lain ";
		}
	}
}