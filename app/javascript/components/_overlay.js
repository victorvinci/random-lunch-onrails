function loadPage() {
  $(document).ready(function() {
    $("#content-section").fadeOut(1);
    setTimeout(function() {
      $("#overlay").fadeOut(1000);
      $("#content-section").fadeIn(500);
    }, 5000);
  });
}

export { loadPage };
