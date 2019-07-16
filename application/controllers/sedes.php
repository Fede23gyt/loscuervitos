<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Sedes extends CI_Controller{
    
    public function __construct()
    {
        parent::__construct();
        $this->load->model('modelo_sedes');
        
    }
    
    public function index(){

        $vdata['sedes'] = $this->modelo_sedes->obtener_sedes();

        $this->load->view('common/header');
        $this->load->view('common/menu_adm');
        $this->load->view('sedes/listado_sedes',$vdata);
        $this->load->view('common/footer'); 
        
    }

}
?>