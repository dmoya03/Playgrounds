import UIKit

class myClass {
    // class definition goes here
}

struct myStruct {
    // structure definition goes here
}

let _class = myClass()
let _struct = myStruct()

/*:
  ## Inicializadores Memberwise para Struct
*/

class Programmer {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

struct Worker {
    var name: String
}

let employee = Programmer(name: "Jose")
var newEmployee = employee

// Al cambiar el valor en newEmployee, el valor también cambia en employee
newEmployee.name
newEmployee.name = "Jonatan"
employee.name


struct Company {
    var employee: Programmer
}

employee.name = "Karen"
let company = Company(employee: employee)
company.employee.name
employee.name = "Karla" // Actualizamos el valor de employee.name desde fuera de la struct
company.employee.name // El valor es Karla

var worker = Worker(name: "Roger")
company.employee.name = worker.name
company.employee.name
worker.name

//Cuando son entre dos structs, al cambiar el valor en una variable no cambia en la otra, sino que permanece
// el valor inicial al menos que se cambie manualmente. Cuando asignamos la instancia de un struct a una variable
// y luego cambiamos un valor an alguna de las dos variables, solo se cambia en la que hicimos el cambio de valor, no en las dos.
// Es como si la variable company se genere como una copia
worker.name = "Felix"
company.employee.name

//Como employee y company estan vinculadas, cuando cambie el valor de la variable company a "Roger"
// tambien cambio en employee y newEmployee
employee.name
newEmployee.name



