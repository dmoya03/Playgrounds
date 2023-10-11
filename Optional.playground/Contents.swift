import UIKit

let stringDocumentId = "001-899964-11"
let id = Int(stringDocumentId.replacingOccurrences(of: "-", with: ""))
print("Document Id:", stringDocumentId)

// Podríamos interpretar los opcionales como un enum con dos valores, uno vacío y el otro con algún valor
enum OptionalExperience<Wrapped> {
    case none
    case some(Wrapped)
}

var myExperienceDev: OptionalExperience<String> = .none
myExperienceDev = .some("5 years")

//
var myYearsOld: Int? = nil
myYearsOld = 27


// Manera segura de sacar el valor del opcional
if let value = id {
    print("(With if let) \(value)")
}


// Otra manera de sacar el valor de un opcional es usando map
id.map { value in
    print("(With map{}) \(value)")
}


// Force unwrapp para obtener el valor de un opcional. Hace lo mismo que if let y map{},
// la diferencia es que no es seguro, ya que si no tiene un valor la app crasheara
id!


// Asignar a una constante nil no tiene sentido
let dayRequest: Int? = nil
// Error al descomentar la siguiente línea
//dayRequest = 2

// Operador ?? para definir un valor por defecto si la variable llega a ser nil o nula
let greetingsString = "Hola"
let numberFails = Int(greetingsString)

//El valor que tomara la variable es 1 ya que numberFails=nil
let defaultNumber = numberFails ?? 1

