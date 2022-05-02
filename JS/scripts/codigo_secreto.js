   function getRandomNumArray(){
   let secretCode = [];
    let num ;
    for(let i= 0; i<5;i++){
        num = Math.floor(Math.random()*10)+1;
        secretCode.push(num);
    };
    return secretCode;
   };

function getNumberTimes(secretCode){
    let wantedNum = prompt("Que numero quieres?");
    let times = 0;
    for(let i = 0; i < secretCode.length;i++){
        if(wantedNum == secretCode[i]){
            times++;
        };
    };
    return times;
};

function numInPosition(secretCode){
    let wantedPosition = parseInt(prompt("Elije posicion entre 1 y 5"));
    let wantedNum = prompt("Elije numero entre 1 y 10");
    if (wantedNum == secretCode[wantedPosition-1]){
        return "El numero si esta en la posicion";
    } else { return "El numero no esta en la posicion"}
};
function getUserArray(){
    let myCode = []
    let wantedSize = parseInt(prompt("tamaño del array"));
    let num 
    for(let i=0;i<wantedSize;i++){
        num = parseInt(prompt("num"))
        myCode.push(num)
    }
    return myCode;
}
function checkArray(secretCode){
    let corrects = 0
    let trys = 4
    let times;
    let myCode;
    while(corrects != 5 && trys !=0){
     myCode = getUserArray();
    for(let i=0;i<5;i++){
        if(myCode[i] == secretCode[i]){
            console.log("Ok")
            corrects++
        }else{
        times = 0;
        for (let j=0;j<5;j++){
            if(myCode[i]==secretCode[j]){
                times++;
            }
        }
        if( times >= 1){
        console.log(myCode[i]+" aparece "+times +" veces");
    } else{
        console.log(myCode[i]+" no aparece");
    }

    }

    }
    trys--
}
}
var secretCode = getRandomNumArray();
console.log(secretCode)
//console.log(getNumberTimes(randomNumArray));

//console.log(numInPosition(randomNumArray));
checkArray(secretCode);