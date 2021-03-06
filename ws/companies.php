<?php
require_once('inc\config.inc.php');
require_once('inc\DatabaseAgent.class.php');
require_once('inc\UserMapper.class.php');

if(isset($_GET['callback']) && isset($_GET['cuisineId'])) {
    $um = new UserMapper;
    $businesses = $um->getAllUsersByType("B", $_GET['cuisineId']);

    header('Content-type: application/json');
    header('Access-Control-Allow-Origin: *');

    $jsonData = json_encode($businesses);
    
    echo $_GET['callback']."($jsonData)";
}
?>