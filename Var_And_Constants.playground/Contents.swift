import UIKit

//Variables de tipo String creadas
var status: String
var indicator = "Init program..."
print(indicator)

status = "Starting..."
print("Status:",status)

indicator = "Updated data"
print(indicator)

//Constante
let nameDeveloper: String
nameDeveloper = "J. Garcia"
print("Developer:", nameDeveloper)

//Sinonimos (typealias)
typealias Name = String
let username: Name = nameDeveloper
print("User:", username)

//Tuplas
let courrierDirection = ("8020 NW 66th street", "BP-XXXXXX")
let (province, region) = ("Miami-Dade County", "South Florida")
print(courrierDirection.0, courrierDirection.1, province,"-", region)

