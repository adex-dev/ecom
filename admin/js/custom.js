CKEDITOR.replace('description');
function showcategory() {
    var x = document.getElementById("displayCategory");
    if(x.style.display==="none"){
        x.style.display="block";
    }else{
        x.style.display="none";
    } 
}
function openChat() {
    document.getElementById("form_chat").style.display = "block";
    document.getElementById("open_chat").style.display = "none";
    document.getElementById("close_chat").style.display = "block";
  }
  
  function closeChat() {
    document.getElementById("form_chat").style.display = "none";
    document.getElementById("open_chat").style.display = "block";
    document.getElementById("close_chat").style.display = "none";
  }