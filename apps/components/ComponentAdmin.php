<?php

trait ComponentAdmin{

	public function SettingCrud($page=null, $key=null){
		$this->setPage = $page ;
		if(!is_null($key) ):
			$this->data  =  $this->model->getProdi()[$key];
		endif;
		$this->viewDash('settings/crud');
	}
}