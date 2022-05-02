

function createObj(){
    let obj = {}
    return obj
}
function addObjProp(obj){
        let prop
        let propValue
        let more
        while(true){
            prop = prompt("New property name:")
            propValue = prompt("Property value:")
            if (prop != null){
            obj[prop] = propValue
        }
            more = prompt("If you want to add more properties input y")
            if (more != "y") break
        }
}

function removeProp(obj){
    let targetProp = prompt("target property name:")
    delete obj[targetProp]
}

function checkDate(obj){
    let date = new Date
    let currentDate = date.getUTCFullYear
    console.log(currentDate)
    if (obj.birthday <= currentDate){
        let age = currentDate - obj.birthday
        console.log("The age is "+ age)
        addObjProp(obj)
    }
}

function main(){
    let student1 = createObj()
    addObjProp(student1)
    console.log(student1)
    removeProp(student1)
    console.log(student1)
    addObjProp(student1)
    console.log(student1)
    checkDate(student1)
    console.log(student1)
}

main()