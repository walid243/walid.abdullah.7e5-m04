const codigo = [];
const maxIntento = 4;
let intento = 0;
/*1. Genera una constante CODIGO_SECRETO de tipo array de 5 número aleatorios entre 0 y 9 usando la libreria Math.random();*/
function generateCode() {
    for (let i = 0; i < 5; i++) {
        codigo[i] = Math.floor((Math.random() * 10));
    }
    console.log(codigo)
}

function getCode() {
    let input = document.getElementById("numero").value
    let code = []
    for (let i = 0; i < input.length; i++) {
        code.push(input[i])
    }
    return code;
}

function checkCode(){
    let correct = 0
    let myCode = getCode()
    let resultRow = document.getElementsByClassName("row"+intento)
    let resultDiv = resultRow[0].getElementsByClassName("w20")
    let resultCel
    let secretCells = document.getElementsByClassName("cel")
    for (let i = 0; i < myCode.length; i++) {
        resultCel = resultDiv[i].getElementsByClassName("celResult")
        resultCel[0].innerHTML = myCode[i]
        if (parseInt(resultCel[0].textContent) === codigo[i]){resultCel[0].classList.add("correct")
            correct++
            secretCells[i].innerHTML = codigo[i]
        }
        else if (codigo.includes(parseInt(resultCel[0].textContent))){ resultCel[0].classList.add("regular")}
        else {resultCel[0].classList.add("incorrect")}
    }
    if (correct === 5){
        document.getElementById("info").innerText = "You Win!"
        document.getElementById("check").setAttribute("style","display:none")
    }else{
        intento++
    }
    if (intento === maxIntento){
        document.getElementById("info").innerText = "You Lose!"
        document.getElementById("check").setAttribute("style","display:none")
    }

}


function generateCellStructure(row){
    let tryCel = document.createElement("div")
    tryCel.setAttribute("class","rowResult row"+[row]+" w100 flex wrap")
    let celDiv
    let cel
    for (let i = 0; i < 5; i++) {
        celDiv = document.createElement("div")
        celDiv.setAttribute("class","w20")
        cel = document.createElement("div")
        cel.setAttribute("class","celResult flex")
        celDiv.appendChild(cel)
        tryCel.appendChild(celDiv)

    }
    document.getElementById("Result").appendChild(tryCel)



}

function generateTryCell(){
    for (let i = 0; i < maxIntento; i++) {
        generateCellStructure(i)
    }
}
