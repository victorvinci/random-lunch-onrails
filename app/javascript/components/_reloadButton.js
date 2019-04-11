function reloadContent() {
  document.getElementById("button").addEventListener("click", function() {
    $("#content-section").fadeOut(1000);
    $("#footer").fadeOut(1000)
    
    setTimeout(function(){
      $("#loader").fadeIn();
    }, 800)
    
    setTimeout(function() {
      $("#content-container").load(location.href + " #content-container");

      setTimeout(function() {
        $("#loader").fadeOut();
        $("#content-section").fadeIn(1000);
        $("#footer").fadeIn(1000)
      }, 2000);
      
    }, 1000);
  });
}

export { reloadContent };
