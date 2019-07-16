<?php

class Administrador extends CI_Controller{

	public function __construct()
	{
		parent::__construct();
		
		$this->load->model('admin_model');
		/*$this->load->model('modelo_sedes');*/
	}

	public function index(){

		$this->load->view('common/header');
    	$this->load->view('common/menu_adm');
    	/*$this->load->view('sedes/listado_sedes');*/
    	$this->load->view('common/footer');

	}
	
}
?>
