alert("Hello World");
console.log("*VAR*");
var variable="Aprendiendo JavaScript";
console.log("Titulo ", variable);
variable= "21/02/2022";
console.log("Fecha ", variable);
variable= 2500;
console.log("Sueldo ", variable);

let nombre = "Alicia";
let apellidos = "Vazquez";
let profesion = "Profesora de informática";
let nya = nombre + " " + apellidos + "/n" + profesion;
let plantilla = `Template:
Hola soy ${nombre} ${apellidos}
y me dedico a ${profesion}`;
console.log(plantilla);

console.log(greaterThan(5,3))

console.log(multiplication(2,5))

console.log(multiplication2(2,5,3))

function greaterThan(num1,num2){
     if (num1 >= num2)  return num1
    else return num2
}

function multiplication(num1, num2){
        let resultado = 0
        for (i=1; i<=num2;i++){
        resultado += num1
        }
        return resultado
}
function multiplication2(num1,num2,num3){
    let resultado1 = 0
    let resultado2 = 0
    for(i=1;i<=num2;i++){
    resultado1 += num1
    }
    for(i=1;i<=num3;i++){
    resultado2 +=resultado1
    }
    return resultado2
}