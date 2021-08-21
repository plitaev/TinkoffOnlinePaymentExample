<?php
require_once "../../__db.php";
echo 'OK';

$json = file_get_contents('php://input');
$obj = json_decode($json,true);

dbquery("INSERT INTO tinkoff_callback(callback) VALUES('".$json."')");

$Aorder=explode('-',$obj['OrderId']);

if ($obj['Status']=="CONFIRMED" || $obj['Status']=="AUTHORIZED") dbquery("UPDATE sys_pay SET pay_status=1 WHERE pay_id=".$Aorder[0]." AND pay_creation_stamp=".$Aorder[1]);
?>