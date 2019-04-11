function reloadContent() {
  document.getElementById("button").addEventListener("click", function() {
    $("#content-section").fadeOut(1000);
    
    setTimeout(function(){
      $("#loader").fadeIn();
    }, 800)
    
    setTimeout(function() {
      $("#content-container").load(location.href + " #content-container");

      setTimeout(function() {
        $("#loader").fadeOut();
        $("#content-section").fadeIn(500);
      }, 2000);
      
    }, 1000);
  });
}

export { reloadContent };
