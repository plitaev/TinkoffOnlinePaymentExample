<?php
require_once "../../__db.php";
$time=time();

$pay_address=(isset($_POST['pay_address'])?"'".$_POST['pay_address']."'":'NULL');
$pay_matherial=(isset($_POST['pay_matherial'])?$_POST['pay_matherial']:'NULL');
$pay_count=(isset($_POST['pay_count'])?$_POST['pay_count']:'NULL');

dbquery("INSERT INTO sys_pay(product_id,partner_code,promo_code,surname,firstname,email,pay_phone,pay_status,pay_price,pay_creation_stamp,pay_address,pay_matherial,pay_count)
	     VALUES(".$_POST['product_id'].",'".$_POST['partner_code']."','".$_POST['promo_code']."','".$_POST['surname']."','".$_POST['firstname']."','".$_POST['email']."',
	            '".$_POST['pay_phone']."',0,".$_POST['pay_price'].",".$time.",".$pay_address.",".$pay_matherial.",".$pay_count.")");                                

$A=[];
$data['pay_id']=dbinsertid();
$data['pay_creation_stamp']=$time;
$A[]=$data;

$json=json_encode($A);
echo $json;                               
?>