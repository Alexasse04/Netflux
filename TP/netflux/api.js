
let image=document.getElementsByClassName('ima');
for(i=0; i<image.length;i++){
    image[i].addEventListener("click",clickImage);
    image[i].myParam=image[i].id;
}
function clickImage(e){
    let id=e.currentTarget.myParam;
    console.log(id)
    let elem=document.getElementById(id);
    let next = elem.nextSibling;
    if(next.style.display !== "block"){
        next.style.display="block";
    }else{
        next.style.display="none";
    }
}