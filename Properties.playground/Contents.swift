import UIKit

struct Vehicle {
    var type: String
    static var brand: String = "Porsche 911"
}

let car = Vehicle(type: "Car Hatchback")
car.type // Propiedad de instancia
Vehicle.brand // Propiedad de Tipo

/*:
  ## Propiedades Computadas en Swift
*/

struct Accident {
    var origin: String = "18.5029526,-69.7763375"
    var latitude: String = ""
    var longitude: String = ""
    
    var Coordinates: String {
        get {
            if latitude.isEmpty && longitude.isEmpty{
                  return "\(origin.components(separatedBy: ",")[0].trimmingCharacters(in: .whitespaces)),\(origin.components(separatedBy: ",")[1])"
                } else {
                  return "\(latitude), \(longitude)"
                }
            }
        set(newCoordinates) {
            self.origin = newCoordinates
            self.latitude = newCoordinates.components(separatedBy: ",")[0].trimmingCharacters(in: .whitespaces)
            self.longitude = newCoordinates.components(separatedBy: ",")[1].trimmingCharacters(in: .whitespaces)
            print("Lon: ",longitude)
        }
    }
    
    
}

var accident = Accident()
accident.Coordinates
accident.Coordinates = "18.5084392,-69.7926128"
accident.Coordinates
accident.latitude
accident.longitude

/*:
  ## Property Observers
*/

struct DriversLicense {
    var name: String = "" {
        willSet(newName) {
            print("About to set name \(newName)")
        }
        
        didSet {
            print("Added \(name)")
        }
    }
}

var driver = DriversLicense()
driver.name
driver.name = "Felix Hernandez"
driver.name

/*:
  ## Property Wrappers
*/

@propertyWrapper
struct DriverValidation {
    private var name: String
    
    init() { self.name = "" }
    
    var wrappedValue: String {
        get { name }
        set {
            if newValue.count > 5 {
                self.name = newValue
                print("Valid name")
            } else {
                print("Error")
            }
        }
    }
}

struct DriverForm {
    @DriverValidation var driverName: String
}

var driverForm = DriverForm()
driverForm.driverName
driverForm.driverName = "Ezequiel Matos"
driverForm.driverName
