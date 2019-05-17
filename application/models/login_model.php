<?php
class Login_model extends CI_Model{
 
  function validate($alias,$password){
    $this->db->where('alias_usuario',$alias);
    $this->db->where('pass_usuario',$password);
    $result = $this->db->get('usuarios',1);
    return $result;
  }
 
}