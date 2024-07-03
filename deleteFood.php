<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Origin, X-Requestes-Whit, Content-Type, Accept');
header("Content-Type: application/json; charset=UTF-8");
header('Content-Type: application/json');
header("Access-Control-Allow-Headers", "Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
header("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE, OPTIONS");

$json=file_get_contents('php://input');//capture the parameter in json {'id':1}
$params=json_decode($json);//Parameters
require('config.php');
$registros['codigo']=-1;
$registros['mensaje']='No se pudo eliminar el registros';

$method = $_SERVER['REQUEST_METHOD'];
if($method!='POST')
{
    $registros['mensaje']='Error- No se permite el acceso por este método...';
    echo json_encode($registros);
    exit(1);
}

if($params)
{
    $id = $params->id;
    $sql="delete  from comidas where id=".$id;
}

$result=$mysqli->query($sql);
if($mysqli->affected_rows>0)//afectec the register
{
   $registros['codigo']='OK';
   $registros['mensaje']='Registro eliminado';
}
 else
	 $registros['mensaje']='No se pudo eliminar';
echo json_encode($registros);
?>