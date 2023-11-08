function fetchdata(){
      $.ajax({    
        type: "GET",
        url: "backend-script.php",             
        dataType: "html",                  
        success: function(data){                    
            $("#table-container").html(data); 
            if (data==1) {
                location.href = "home.php"; 
            }
            
           
        }
    });
}

$(document).ready(function(){
 setInterval(fetchdata,100);
});

alert($("#table-container").html(data));