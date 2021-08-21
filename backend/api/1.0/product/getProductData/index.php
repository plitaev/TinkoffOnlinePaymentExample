<?php
require_once "../../__db.php";
$A=[];
$data=dbarray(dbquery("SELECT product_form_version,product_price,product_price_basement FROM sys_product WHERE product_id=".$_POST['product_id']));
$A[]=$data;

$json=json_encode($A);
echo $json;                                       
?>