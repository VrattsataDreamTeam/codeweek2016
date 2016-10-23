<?php 
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Test extends CI_Controller{

	
	function __construct(){
		parent::__construct();

		$this->load->model('meals_model');
		$this->load->model('orders_model');
	}
	
	public function index(){

		//$gamer_id = $this->session->userdata('apps_id');
		$data['meals'] = $this->meals_model->get_meals();

		$data['dynamic_view'] = 'index';
        $data['title'] = 'Meals';

        $this->load->view('index', $data);

		
	}

	public function save_meals(){
		$this->orders_model->add_order();

		$id['lasts'] = $this->orders_model->get_last_order();
		$this->load->view('index', $id);
		//$this->index();

		/*echo "<pre>";
		var_dump($this->input->post('clientname'));
		echo "</pre>";
		echo "ehoo";*/
	}

	public function shaw_last_order(){
		$this->orders_model->get_last_order();
		$this->load->view('index');
		//$this->load->view('index');
	}
	public function order(){
		
		 $data['last'] = $this->orders_model->get_last_order();
		//$this->load->view('index', $data);
		$this->load->view('index', $data);
	}
}