// Toggles admin dashboard components
$(".clients-btn").click(function() {
  $(".maybe-area").show();
  $(".assigned-btn").show();
  $(".analysis-cards").show();
  $(".clients-btn").hide();
  $(".assigned-maybe-area").hide();

});

// toggle clients and contacts button
$(".assigned-btn").click(function() {
  $(".clients-btn").show();
  $(".assigned-btn").hide();
  $(".assigned-maybe-area").show();
  $(".maybe-area").hide();
});

// AJAX HERE
$(".keystrokes").click(function() {
  $.ajax("sales_database.php", {
    success: function(data) {
      alert("AJAX call was successful!");
      alert("Data from the server" + data);
    },
    error: function() {
      alert("There was some error performing the AJAX call!");
    }
  });
});


// Password 
function myFunction() {
  var x = document.getElementById("id_password");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}



