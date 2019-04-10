function reloadContent() {
  document.getElementById('button').addEventListener("click", function(){
   let x = document.getElementById('content').innerHTML;
   document.getElementById('content').innerHTML = x;
  });


}

export { reloadContent };