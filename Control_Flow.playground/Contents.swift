import UIKit

//Iterar cada caracter de un string
let string = "ABCDEFGH"

for letter in string {
    print(letter)
    letter
}

// Iterar en un array
let players = ["Daniel", "Victor", "Frank", "Blady", "Ernesto", "Ismael"]

for name in players {
    print("- \(name)")
}

//Contar los elementos de un array
players.count
//Contar los caracteres que tiene dentro un elemento del array
players[2].count

// Iterar en un dictionary
let baseballJerseys = [10: players[1], 20: players[2], 30: "Emil", 13: players[0]]
for (numberJersey, name) in baseballJerseys {
    print("Number \(numberJersey) and Name \(name)")
}

// Iterar usando rangos
for shift in 1...5 {
    print("#\(shift) \(players[shift])")
}

/*:
  ## Bucles While
*/

var position = 0
while position < 9 {
    print("\(position+1)st in lineup")
    position += 1
}

var lineupAlternative = 1
repeat {
    print("\(lineupAlternative) bat ")
    lineupAlternative += 1
} while lineupAlternative < 10

/*:
  ## Sentencias condicionales
  ### If
*/
var numberOfPlayersLeague = 100

if numberOfPlayersLeague > 10 {
    print("A bunch of players! 🤓")
}

if numberOfPlayersLeague > 10 {
    print("Good assistance 🤓")
} else if numberOfPlayersLeague > 5 {
    print("We are missing some players!")
} else {
    print("We need more players!")
}
/*:
  ### Guard
*/

var myCollectionBalls: [String] = []

func checkMyCollection() {
    guard !myCollectionBalls.isEmpty else {
        print("My collection is empty!")
        return
    }
    
    print("My collection is NOT empty!")
}

checkMyCollection()


var myOptionalPitcher: Int? = 2

func checkMyOptional() {
    guard let value = myOptionalPitcher else {
        print("My pitcher alternative no appear. Is nil!")
        return
    }
    
    print("My pitcher is #\(value)!")
}

checkMyOptional()
/*:
  ### Switch
*/
switch numberOfPlayersLeague {
case 100:
    print("The league has grown a lot! 🤓")
default:
    print("Always playing!")
}

switch numberOfPlayersLeague {
case let x where numberOfPlayersLeague > 75:
    print("A bunch of players! TOTAL: \(x)")
default:
    print("There are more players missings")
}

// Enum with different cases
enum StatusPlayer {
    case none
    case tripleA
    case doubleA
    case classA
    case bigLeagues
}

let status: StatusPlayer = .doubleA

switch status {
case .classA:
    print("The player has sent to class A (A)")
case .doubleA:
    print("The player has sent to double A (AA)")
case .tripleA:
    print("The player has sent to triple A (AAA)")
case .bigLeagues:
    print("The player has sent to Big Leagues")
case .none:
    print("The player does not belong to any league")
}

//switch con rangos

let num = 6
switch num{
case 1:
    print("The number is one")
case 2:
    print("The number is two")
case 3:
    print("The number is three")
case 4...10:
    print("The number is between four and ten")
default:
    print("The number is not between four and ten")
}

let day = "martes"
switch day{
case "lunes", "martes", "miercoles", "jueves", "viernes":
    print("Hoy es dia de trabajo")
case "sabado":
    print("Hoy es dia de pasear")
case "domingo":
    print("Hoy es dia de descanso")
default:
    print("Ingresa un dia valido")
}

