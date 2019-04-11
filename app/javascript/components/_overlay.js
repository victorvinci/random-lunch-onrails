function loadPage() {
  $(document).ready(function() {
    setTimeout(function() {
      $("#overlay").fadeOut(3000);
    }, 5000);
  });
}

export { loadPage };
