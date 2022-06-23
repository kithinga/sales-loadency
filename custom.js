// Toggles amdin dashboard components
$(".maybe-btn").click(function() {
  $(".maybe-area").toggle();
  $(".analysis-cards").toggle();
  $(".analysis-cards-dash").toggle();
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
