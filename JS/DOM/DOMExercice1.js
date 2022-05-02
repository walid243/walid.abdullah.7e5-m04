function estiljs(){
    let element = document.getElementById("text")
    if (element.getAttribute("style")){
        element.removeAttribute("style")
    }else{
    element.setAttribute("style","background:blue;")
    }
}