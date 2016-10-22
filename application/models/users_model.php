<?php

class Orders_model extends CI_Model{

	/*public function get_all_orders()
	{

		$q = $this->db->get('orders');

		return $q->result_array();


	}*/

	public function add_order()
	{
		$user = array(
			'order_name' => $this->input->post('order_name'),	
			'order_phone' => $this->input->post('order_phone'),
			'meal_id' => $this->input->post('meal_id'),
			'order_num' => $this->input->post('order_num'),
			'order_sum' => $this->input->post('order_sum'),
			);
		return $this->db->insert('apps', $user);
	}

}