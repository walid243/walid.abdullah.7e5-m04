function estiljs(){
    let text = document.getElementById("text")
    if (text.getAttribute("style") !== "color: blue;"){
    text.setAttribute("style","color: blue;")
    }else {text.setAttribute("style","color: black;")}
}


function prenValorForm(){
    let elements = document.getElementsByTagName("input")
    for (let i=0; i < elements.length-1;i++){
//  El primer console.log que se hace a veces que no se muestra y no sé como solucionarlo
        console.log(elements[i].getAttribute("value"))
    }
}
function backG(){
    let elements = document.getElementsByTagName("p")
    for (let i = 0; i < elements.length; i++) {
        elements[i].setAttribute("style","background-color: green;")
    }
}
function remID(){
    let elements = document.getElementsByTagName("p")
    for (let i = 0; i < elements.length; i++) {
        elements[i].removeAttribute("id")
    }
}
function obtenirAtributs(){
    let attributeNames = document.getElementById("itb").getAttributeNames()
    for (let i=0 ; i < attributeNames.length ; i++ ){
        console.log(attributeNames[i]+ ": "+ document.getElementById("itb").getAttribute(attributeNames[i]))
    }
}

function insertarFila(){
    if (prompt("0 si quieres la fila al principio o tra cosa para el final") === "0"){
        iniciTabla()
    } else {finalTabla() }
}
function iniciTabla(){
    let element = document.getElementById("Taula")
    let tr = document.createElement("tr")
    tr.innerHTML = "<td>fila</td><td>nueva</td>"
    element.prepend(tr)
}
function finalTabla(){
    let element = document.getElementById("Taula")
    let tr = document.createElement("tr")
    tr.innerHTML = "<td>fila</td><td>nueva</td>"
    element.append(tr)
}

function cambiarCont(){
    let fila = parseInt(prompt("Nº de la fila"))-1
    let columna = parseInt(prompt("Nº de la columna"))-1
    let nuevoCont = prompt("Nuevo contenido:")
    let tabla = document.getElementById("Taula").childNodes[1].childNodes
    if (fila % 2 != 0){fila+=1}
    let col = tabla[fila].childNodes
    if (columna % 2 == 0 ){columna+=1}
    console.log(tabla)
    col[columna].innerText = nuevoCont
}

function createTable(){
    let filas = parseInt(prompt("Nº de la filas que tiene que tener?"))
    let columnas = parseInt(prompt("Nº de la columnas que tiene que tener?"))
    let old = document.getElementById("Taula")
    let newTaula = document.createElement("table")
        newTaula.setAttribute("id","Taula")
        newTaula.setAttribute("border","1")
    let fila
    let columna
    for(let i=1 ; i <= filas ; i++){
        fila = document.createElement("tr")
        fila.setAttribute("class","row"+i)
        for (let j=1; j <= columnas;j++){
            columna = document.createElement("td")
            columna.setAttribute("class","col"+j)
            fila.appendChild(columna)
        }
        newTaula.appendChild(fila)
    }
    document.getElementById("deTabla").replaceChild(newTaula,old)
}