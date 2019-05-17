<?php

class Administrador extends CI_Controller{

	public function __construct()
	{
		parent::__construct();
		
		$this->load->model('admin_model');
	}

	public function index(){

		$this->load->view('common/header');
    	$this->load->view('administrador');
    	$this->load->view('common/footer');

	}
	
}
?>
