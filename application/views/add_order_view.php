<?php


echo"<script type='text/javascript' src='".base_url()."assets/js/order.js'></script>";

echo validation_errors();

echo "<div>";
echo "<h1 id='grandma'>БАБА КЕТЪРИНГ</h1>";
echo "<h1> Искаш да опиташ вкусотийките на баба? Заповядай при нас!</h1>";
echo form_open('Meals/save_meals#form-wrap');

echo"<p>Въведи име</p>";
echo form_input('order_name');

echo"<p>Въведи телефонен номер</p>";
echo form_input('order_phone');

echo"<p>Ястия</p>";//

echo "<pre>";
var_dump($meals);
echo "</pre>";

$options_meals = array();

foreach ($meals as $meal) {
	$options_meals[$meal['meal_id']] = $meal['meal_name'].' - '.$meal['meal_price']. 'лв';
}

echo form_dropdown('meal_id', $options_meals);

echo"<p>Количество, бр</p>";//
echo form_input('order_num');

echo"<p>Общо сума</p>";


//$sum = $num*$meal_price;

echo form_input('order_sum');

echo "<p>".form_submit('submit', 'Поръчай')."</p>";

echo form_close();


echo "</div>";

echo "<br>";
echo "<br>";
echo "<br>";
echo "<br>";
echo "<br>";
echo "<br>";
echo "<br>";
echo "<br>";
echo "<br>";
echo "<br>";
echo "<br>";
echo "<br>";
echo "<br>";
echo "<br>";
echo "<br>";
echo "<br>";
echo "<br>";
echo "<br>";
echo "<br>";
echo "<br>";
echo "<div id='form-wrap'>text</div>";