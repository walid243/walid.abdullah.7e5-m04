const codigo = [];
const maxIntento = 8;

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
        code.push(input[i].value)
    }
    console.log(input.length)
    return code;
}

function checkCode(){
    let mycode = getCode()
}


