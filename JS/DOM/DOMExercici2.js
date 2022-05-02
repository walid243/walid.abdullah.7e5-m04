function prenValorForm(){
    let elements = document.getElementsByTagName("input")
    for(let i = 0; i < elements.length-1; i++){
        console.log(elements[i].getAttribute("value"))
    }
}