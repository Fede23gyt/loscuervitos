<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Modelo_sedes extends CI_Model {

    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
    
    function obtener_sedes() {
        $query=$this->db->get('sedes');

        if ( $query->num_rows() > 0 ) return $query;
        else return false;

    }

    function agregar_sede(){

    }

}