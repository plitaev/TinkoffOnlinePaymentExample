$(document).ready(function() {
 var product_id = getUrlParameter('product_id');
 var surname = getUrlParameter('surname');
 var firstname = getUrlParameter('firstname');
 var email = getUrlParameter('email');
 var pay_phone = getUrlParameter('phone');
 var pcode = getUrlParameter('pcode');
 var promo = getUrlParameter('promo');

 $.post('https://BACKEND_URL/1.0/product/getProductData/',{'product_id':product_id}).done(function(data) {
  var json=$.parseJSON(data);
  $.post('https://BACKEND_URL/1.0/pay/createPay/',{'product_id':product_id,'surname':surname,'firstname':firstname,'email':email,'pay_phone':pay_phone,'partner_code':pcode,'promo_code':promo,'pay_price':json[0].product_price}).done(function(paydata) {
   console.log(paydata);
  	var json_pay=$.parseJSON(paydata);

  	$("#order").val(json_pay[0].pay_id+"-"+json_pay[0].pay_creation_stamp);
  	$("#name").val(surname+" "+firstname);
  	$("#email").val(email);

  	var receipt=$("#receipt").val();
  	var user_receipt=receipt.replace("info@example.com",email);
  	console.log(user_receipt);
  	$("#receipt").val(user_receipt);

  	$(document).ready(function() {$('#TinkoffPayForm').submit();});

  });
 });
});