function main(){

    let currentDate = new Date()
    let check = checkDate(currentDate)
    if(check) console.log("Estamos en M04")
    else console.log("No estamos en M04")
}

function checkDate(currentDate){

    if (currentDate.getDay() == 1){
       if (currentDate.getHours()>= 11){
            if (currentDate.getMinutes() >= 15) {
                if ((currentDate.getHours() <= 12) && (currentDate.getMinutes() <= 10)){
                    return true
                }
            }
        }
    }
    else if (currentDate.getDay() == 5){
        if (currentDate.getHours() >= 8){
            if ((currentDate.getHours()<= 9) && (currentDate.getMinutes() <= 50)){
                return true
            }
        }
    }
    else{return false}
}
function checkBirthday(){
    
}

main()