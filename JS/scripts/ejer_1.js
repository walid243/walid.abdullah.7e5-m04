function checkGreater(x,y){
    if (x > y) return x
    else return y
}

function multiply(x,y,z){
    if (z == 0) return x
    else if (y == 0){
        return x + multiply(x,y,z-1)
    }
    else{
        return x + multiply(x,y-1,z)
    }
}
function repeticion(x){
    if (x / 10 == 0) return 0
    else return 1 + repeticion(x/10)
}
function rara(){
    let array =[]
    let result = 0
    let numStr
    for(let num=1;num<=10000;num++){
        numStr = num.toString()
    }
}

function main(){

}
main()