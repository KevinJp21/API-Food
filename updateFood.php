<?php
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
header("Allow: GET, POST, OPTIONS, PUT, DELETE");
$method = $_SERVER['REQUEST_METHOD'];
if($method == "OPTIONS") {
    die();
}

$json=file_get_contents('php://input');//capture the parameter in json {'id':1}
$params=json_decode($json);//parameters
require('config.php');
$registros['codigo']=-1;
$registros['mensaje']='No se pudo Actualizar el registros';

$method = $_SERVER['REQUEST_METHOD'];
if($method!='PUT')
{
    $registros['mensaje']='Error- No se permite el acceso por este método...';
    echo json_encode($registros);
    exit(1);
}
if($params)
{
    $id = $params->id;
    $nombre=$params->nombre;
    $descripcion=$params->descripcion;
    $precio=$params->precio;
    $id_categoria=$params->id_categoria;
    $img=$params->img;
    $popularidad=$params->popularidad;
    $stmt = $mysqli->prepare("UPDATE comidas  SET nombre=?, descripcion=?, precio=?, id_categoria=?, img=?, popularidad=? WHERE id=?");
    /* Bind variables to parameters */
    $numparam = "sssssss"; //number of characters must be equal to the number of parameters
    $stmt->bind_param($numparam,$nombre,$descripcion,$precio,$id_categoria,$img,$popularidad,$id);
    /* Execute the statement */
    $stmt->execute();

}
if($mysqli->affected_rows>0)//afected the register
{
   $registros['codigo']='OK';
   $registros['mensaje']='Registro actualizado correctamente';
}
echo json_encode($registros);
?>