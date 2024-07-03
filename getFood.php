<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Origin, X-Requestes-Whit, Content-Type, Accept');
header("Content-Type: application/json; charset=UTF-8");
header('Content-Type: application/json');
header("Access-Control-Allow-Headers", "Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
header("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE, OPTIONS");

$json=file_get_contents('php://input');//capture the parameter in json {'id':1}
$params=json_decode($json);//parameters
require('config.php');
$registros['codigo']=-1;
$registros['mensaje']='No hay registros para mostrar';
$sql="select comidas.id, comidas.nombre, comidas.descripcion, comidas.precio, categorias.descripcion as categoria,
comidas.img, comidas.popularidad, comidas.cant_vendidos 
from comidas
join
categorias on comidas.id_categoria = categorias.id
order by comidas.id";
$method = $_SERVER['REQUEST_METHOD'];
if($method!='GET')
{
    $registros['mensaje']='Error- No se permite el acceso por este método...';
    echo json_encode($registros);
    exit(1);
}

if(isset($_GET['id']))
{
	$id = $_GET['id'];
    $sql="select * from comidas where id=".$id;
}

if($params)
{
    $id = $params->id;
    $sql="select * from comidas where id=".$id;
}

$result=$mysqli->query($sql);
if(mysqli_num_rows($result)>0)//obtained registration
{
    $registros=mysqli_fetch_all($result,MYSQLI_ASSOC); 
}
echo json_encode($registros);
?>