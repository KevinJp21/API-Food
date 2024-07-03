<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Origin, X-Requestes-Whit, Content-Type, Accept');
header("Content-Type: application/json; charset=UTF-8");
header('Content-Type: application/json');
header("Access-Control-Allow-Headers", "Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
header("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE, OPTIONS");

$response = array('status' => 'error', 'message' => 'No se pudo procesar la solicitud.');

//Subir datos
$json=file_get_contents('php://input');//capture the parameter in json {'id':1}
$params=json_decode($json);//parameters
require('config.php');
$registros['codigo']=-1;
$registros['mensaje']='No se pudo Guardar el registros';
$method = $_SERVER['REQUEST_METHOD'];
if($method!='POST')
{
    $registros['mensaje']='Error- No se permite el acceso por este método...';
    echo json_encode($registros);
    exit(1);
}
if($params)
{
    
    $nombre=$params->nombre;
    $descripcion=$params->descripcion;
    $precio=$params->precio;
    $id_categoria=$params->id_categoria;
    $img=$params->img;
    $popularidad=$params->popularidad;
    $cant_vendidos=$params->cant_vendidos;
    $stmt = $mysqli->prepare("INSERT INTO comidas (nombre, descripcion, precio, id_categoria, img, popularidad, cant_vendidos) VALUES (?,?,?,?,?,?,?)");
    /* Bind variables to parameters */
    $numparam = "sssssss"; //number of characters must be equal to the number of parameters
    $stmt->bind_param($numparam,$nombre,$descripcion,$precio,$id_categoria,$img,$popularidad,$cant_vendidos);
    /* Execute the statement */
    $stmt->execute();

}
if($mysqli->affected_rows>0)//afected the register
{
   $registros['codigo']='OK';
   $registros['mensaje']='Registro guardado correctamente';
}
echo json_encode($registros);
?>