<?php 
require 'database.php';
$data = $_GET;

if(isset($data['id']))
{
    $field = R::findOne('users', "id = ?",array($data['id']));
    
    echo json_encode($field);
}
if(isset($data['login']))
{
    $field = R::findOne('users', "login = ?",array($data['login']));
    $id = $field->id;
    echo $id;
    $http = array('login'=>'rofl',
    'password'=>'123456',
    'session'=>true);
    echo $json = json_encode($field);
    echo "<br/>".http_build_query($http);
    echo uniqid();
}





?>