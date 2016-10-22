<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Meals_model extends CI_Model{

	public function get_meals(){
		
		$this->db->select('*');
		$this->db->from('meals');
		$this->db->where('meals.date_deleted =', NULL);
		//$apps_id = $this->session->userdata('apps_id');

		$query = $this->db->get();

		return $result = $query->result_array();
		}

}