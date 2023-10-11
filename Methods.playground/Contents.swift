import UIKit

class Counter {
    var count = 0
    
    func increment() {
        count += 1
    }
    
    func increment(by amount: Int) {
        count += 1
    }
    
    func reset() {
        count = 0
    }
}

let counter = Counter()
counter.increment()
counter.increment()

counter.count
counter.reset()
counter.count
counter.increment()
counter.count


/*:
  ## La propiedad Self
*/

class CounterWithSelf {
    var count = 0
    
    func increment() {
        self.count += 1
    }
    
    func increment(by amount: Int) {
        self.count += 1
    }
    
    func reset() {
        self.count = 0
    }
}

/*:
  ## Métodos de Tipo
*/

class CounterWithStaticFunctions {
    var count = 0
    
    static func printStatus() {
        print("Counter started Type Method")
    }
}

CounterWithStaticFunctions.printStatus()
