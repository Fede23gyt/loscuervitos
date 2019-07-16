<?php
class Login extends CI_Controller{
  function __construct(){
    parent::__construct();
    $this->load->model('login_model');
  }
 
  function index(){
    
    $this->load->view('login');
    
  }
 
  function verif(){
    $alias    = $this->input->post('alias',TRUE);
    $password = $this->input->post('password',TRUE);
    $validate = $this->login_model->validate($alias,$password);
    if($validate->num_rows() > 0){
        $data  = $validate->row_array();
        $alias = $data['alias_usuario'];
        $nom_usu = $data['nombre_usuario'];
        $email = $data['mail_usuario'];
        $rol   = $data['id_rol'];
        $id    = $data['id_usuario'];
        $sesdata = array(
            'nom_usu'      => $nom_usu,
            'alias_usu'    => $alias,
            'mail_usu'     => $email,
            'rol_usu'      => $rol,
            'id_usu'       => $id,
            'logged_in'    => TRUE
        );
        $this->session->set_userdata($sesdata);
        // access login for admin
        if($rol_usu = 1){
            redirect('administrador');
            /*redirect('tablero/administrador');*/
 
        // access login for gerente
        }elseif($rol_usu = 2){
            redirect('gerente');
 
        // access login for coordinador
        }elseif($rol_usu = 3){
            redirect('coordinador');

        // access login for profesor
        }elseif($rol_usu = 4){
            redirect('profesor');

        // access login for cobrador
        }elseif($rol_usu = 5){
            redirect('cobrador');

        // access login for padre
        }elseif($rol_usu = 6){
            redirect('padre');

        }else{
          /*  redirect('login');*/
        }
    }else{
        echo $this->session->set_flashdata('msg','Usuario o contraeña incorrecta');
        /*redirect('login');*/
    }
  }
 
  function logout(){
      $this->session->sess_destroy();
      redirect('login/verif');
  }
 
}