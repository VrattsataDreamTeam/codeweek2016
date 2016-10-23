<?php

class Orders_model extends CI_Model{

	public function add_order()
	{
		$user = array(
			'order_name' => $this->input->post('order_name'),	
			'order_phone' => $this->input->post('order_phone'),
			'meal_id' => $this->input->post('meal_id'),
			'order_num' => $this->input->post('order_num'),
			'order_sum' => $this->input->post('order_sum'),
			);
		 
		 return $this->db->insert('orders', $user);

	}

	public function get_last_order()
	{  
                 $this->db->select('*');
                // $this->db->from('orders');//att
                 $this->db->join('meals', 'meals.meal_id = orders.meal_id');//att

                 $this->db->order_by('order_id', 'DESC'); 
                 $this->db->limit(1);
                 $query = $this->db->get('orders');
                 
              return   $query->result_array();
	}

}