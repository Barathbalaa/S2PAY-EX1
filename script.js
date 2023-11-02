$(document).ready(function(){
   $(".country").on("change",function(){
    
    $.ajax({
        url: "city.php",
        type: "POST",
        data: { country_id:$('.country').val() ,type:"Country" },
        success: function (data) {
            $(".state").html(data);
        }
    });
});
$(".state").on("change",function(){
    $.ajax({
        url: "city.php",
        type: "POST",
        data: { state_id:$('.state').val() ,type:"state" },
        success: function (data) {
            $(".city").html(data);
        }
    });
});
   
  $('form').on("submit",function(event){
     event.preventDefault();
     $.ajax({
        url:"update.php",
        type:"POST",
        data:$(this).serialize(),
        success:function(){
          alert("Added");
        }
     }); 
   });
   });