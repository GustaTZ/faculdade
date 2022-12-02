var emoji=["&#127880","&#128127","&#128123","&#9924","&#9749","&#129409"];
var i;
document.querySelector("#dv1").innerHTML=emoji+"<br>"+emoji.length;
for (i=0;i<emoji.length;i++){
    document.querySelector("#emoji").innerHTML+="<option>"+emoji[i]+"</option>"
}
//document.querySelector("#emoji").innerHTML="<option>MS</option>";