import UIKit

/*## Array
*/
var deviceStrings = ["Phone", "Laptop"]
deviceStrings.append("Tablet")

// Tenemos un error en la siguiente línea, ya que el array es de tipo String. Al intentar meter un entero nos da un error
// deviceStrings.append(1)

// Colecciones mutables

var myDevices: [String]
var myNewDevices: Array<String>

// Crear una array vacío

var age = [Int]()
var newAge: [Int] = []

// Crear un array por defecto
var shifts = Array(["1", "2", "3"])
var newShifts = ["7", "8", "9"]


// Acceder y Modificar un Array

deviceStrings = ["Dell Desktop Pc", "iPhone"]


// Número de elementos en un Array
print("The array contains \(deviceStrings.count) items.")

// Saber si un Array está vacío
if deviceStrings.isEmpty {
   print("arrayStrings is empty.")
} else {
   print("arrayStrings is not empty.")
}

// Añadir un elemento al final del Array
deviceStrings.append("Lenovo Laptop")
deviceStrings += ["Tablet Samsung", "Google Smartwatch"]

// También podemos insertar un elemento en una posición específica usando el siguiente método
deviceStrings.insert("HP Laptop", at: 0)
// El resultado es ["7", "1", "2", "3", "4"]
print("Var deviceStrings: \(deviceStrings)")

/*:
## Set
*/

struct User: Hashable {
   var charge: String
   var id: Int
}

let iosDev = User(charge: "Ios Developer", id: 3)
let androidDev = User(charge: "Android Developer", id: 20)

var users = Set(arrayLiteral: iosDev, androidDev)

// Acceder y modificar un Set

// Número de elementos en un Set
print("The users contains \(users.count) items.")

// Saber si un Set está vacío
if users.isEmpty {
   print("users is empty.")
} else {
   print("users is not empty.")
}

// Añadir un elemento
users.insert(User(charge: "Web Developer", id: 30))

// Comprobar que Set contiene un valor
users.contains(iosDev)

// Borrar un elemento del Set
users.remove(iosDev)
/*:
## Dictionary
*/
var locationsInformation = [String: String]()
var locationNewInformation: [String: String] = [:]

var locationInformation = ["name": "Dominican Republic", "coordinateX": "1.5", "coordinateY": "4.0"]

// Acceder y Modificar un Dictionary

// Número de elementos en un Array
print("The locationsInformation contains \(locationsInformation.count) items.")

// Saber si un Array está vacío
if (locationsInformation.isEmpty) {
   print("locationsInformation is empty.")
} else {
   print("locationsInformation is not empty.")
}

// Añadir un elemento al Dictionary
locationsInformation["notes"] = "Beautiful City"

// Comprobar que existe una key y actualizar su valor
if let oldValue = locationsInformation.updateValue("London", forKey: "name") {
   print("The old value for name was \(oldValue)")
}

// Borrar el valor de una key
if let removedValue = locationsInformation.removeValue(forKey: "name") {
   print("The removed value is \(removedValue)")
}

//Acceder a un valor de una key
if let accessValueOptional = locationsInformation["notes"]{
    print(accessValueOptional)
}
print(locationsInformation["notes"])

// Para borrar el valor de una key, podemos usar subscripts y asignarle nil a la key
locationsInformation["notes"] = nil


