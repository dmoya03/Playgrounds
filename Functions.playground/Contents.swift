import UIKit

func addCarBrand(name: String, year: Int) -> Bool {
    print("Car brand: \(name)")
    print("Car year: \(year)")
    return true
}

let addedCarToSystem = addCarBrand(name:"Volkswagen Passat", year:2006)

/*:
  ## Tuplas
*/

func getBrandModel() -> (String, String, Int) {
    let brand = "Mazda"
    let model = "6"
    return (brand, model, 2006)
}

let (_brand, _model, _year) = getBrandModel()

/*:
  ## Nombres de los parámetros
*/

func getVehicleOwner(ownerName name: String,
                  ownerSurname surname: String) -> (String, String) {
    return (name, surname)
}

//Funcion con _ para evitar poner nombre del parametro al llamar la funcion (ej., evitar poner name:"",...)
func getOwner(_ name: String, _ surname: String) -> (String, String) {
    return (name, surname)
}

let (_name, _surname) = getVehicleOwner(ownerName: "Josue", ownerSurname: "Hernandez")
_name
_surname

let (oName, oSurname) = getOwner("Elly", "De La Cruz")
oName
oSurname


/*:
  ## Valores por defecto
*/

func createFile(name: String, path: String = "/") {
    // Do something
}

createFile(name: "Index.js")

/*:
  ## Parámetros Variadic
*/

func validateNamesWith(names: String..., letter: String) {
    var i:Int = 0

    for name in names {
        if name.contains(letter){
            i = i+1
            print("Owner Vehicle \(i): \(name)")
        }
    }
    
}

validateNamesWith(names: "Josue", "Javier", "Alberto", "Jorge", letter: "J")

/*:
  ## Parámetros In-Out
*/

//func validateOwner(names: inout [String]) {
//names = ["Javier Ortiz", "Daniel Estrada"]
//print("Name \(names)")
//}
//
//validateOwner(names: ["Desconocido1", "Desconocido2"])

func validateOwner(names: inout [String]) {
    names = ["Javier Ortiz", "Daniel Estrada"]
    print("Name \(names)")
}

var arrayOfNames = ["Ronny Mauricio", "Jorge Alfaro"]
validateOwner(names: &arrayOfNames)

/*:
  ## Tipo de una función
*/

let typeFunction = validateOwner(names:)
// El tipo es: (inout [String]) -> ()
