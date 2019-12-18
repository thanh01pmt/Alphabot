<?php

$x = $_GET['deltaX'];
$y = $_GET['deltaY'];

$joystick[] = array('x' => $x, 'y' => $y);


$fp = fopen('joystick.json', 'w');
fwrite($fp, json_encode($joystick))
fclose($fp)
?>