$( document ).ready(function() {
 var product_id = getUrlParameter('product_id');
 var pcode = getUrlParameter('pcode');
 var promo = getUrlParameter('promo');
 
 $("#product_id").val(product_id);
 $("#pcode").val(pcode);
 
 if (promo==1) {
  $(".promo").css('display','block');
  $("#promo").css('width','100%');
 } 
});