<?php 
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Meals extends CI_Controller{
	
	function __construct(){
		parent::__construct();

		$this->load->model('meals_model');
		//$this->load->model('users_model');
	}
	
	public function show_meal(){

		//$gamer_id = $this->session->userdata('apps_id');
		$data['meals'] = $this->meals_model->get_meals();

		$data['dynamic_view'] = 'add_order_view';
        $data['title'] = 'Meals';

        $this->load->view('templates/main_template', $data);

		
	}
}