<?php


echo"<script type='text/javascript' src='".base_url()."assets/js/order.js'></script>";

echo validation_errors();

echo "<div>";
echo "<h1 id='grandma'>БАБА КЕТЪРИНГ</h1>";
echo "<h1> Искаш да опиташ вкусотийките на баба? Заповядай при нас!</h1>";
echo form_open('login/index');

echo"<p>Въведи име</p>";
echo form_input('clientname');

echo"<p>Въведи телефонен номер</p>";
echo form_input('phone');

echo"<p>Ястия</p>";//

//echo "<pre>";
//var_dump($meals);
//echo "</pre>";

$options_meals = array();

foreach ($meals as $meal) {
	$options_meals[$meal['meal_id']] = $meal['meal_name'].' - '.$meal['meal_price']. 'лв';
}

echo form_dropdown('meals', $options_meals);

echo"<p>Количество, бр</p>";//
echo form_input('nums');

echo"<p>Общо сума</p>";


//$sum = $num*$meal_price;

echo form_input('sum');

echo "<p>".form_submit('submit', 'Поръчай')."</p>";

echo form_close();


echo "</div>";