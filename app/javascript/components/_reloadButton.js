function reloadContent() {
  document.getElementById("button").addEventListener("click", function() {
    $("#content").load(location.href + " #content");
  });
}

export { reloadContent };
