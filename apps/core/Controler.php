<?php

class Controler{
	private $dirTemplates = 'public/templates/';
	private $dirViews = 'public/views/';
	private $dirModel = 'apps/models/';

	public function view($view){
		require_once $this->dirViews . $view .".php" ;
	}
	public function viewTemplate($view){
		require_once $this->dirTemplates . $view .".php" ;
	}
	public function viewDash($view){
		require_once $this->dirViews . "dashboard/". $this->dPage . $view .".php" ;
	}
	public function viewDashboard($view){
		if (isset($this->fMenu) && isset($this->dPage)):
			$this->fMenu = $this->dirViews . $this->fMenu;
			require_once $this->dirTemplates . 'dashboard/header.php';
			require_once $this->dirTemplates . 'dashboard/sidebar.php';
			require_once $this->dirTemplates . 'dashboard/navbar.php';
			require_once $this->dirViews . "dashboard/" . $this->dPage . $view .".php" ;
			require_once $this->dirTemplates . 'dashboard/footer.php';
		else:
			echo "Anda tidak set fMenu & dPage di controler anda, jika anda sudah set maka anda bisa menggunakan method viewDashoard";
		endif;
	}
	public function model($model){
		require_once $this->dirModel . $model .".php" ;
		return new $model ;
	}
}