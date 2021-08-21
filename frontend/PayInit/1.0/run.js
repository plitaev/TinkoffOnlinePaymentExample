$(document).ready(function() {
 var product_id = getUrlParameter('product_id');
 var pcode = getUrlParameter('pcode');
 var promo = getUrlParameter('promo');
 
 $.post('https://API_DOMAIN/1.0/product/getProductData/',{'product_id':product_id}).done(function(data) {
  var json=$.parseJSON(data);
  document.location.href="https://BACKEND_DOMAIN/pay/"+json[0].product_form_version+"/"+product_id+"?product_id="+product_id+"&pcode="+pcode+"&promo="+promo;
 });
});