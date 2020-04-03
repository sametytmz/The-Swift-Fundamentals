
// Problem: Why do I see "?" and "!" when accessing methods and properties?
// Note: Example from UIKit

import UIKit

let labelColor = UILabel().highlightedTextColor?.cgColor


//  Design Class

class Human {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    func sayHello() {
        print("Hello, I'm \(name)")
    }
}

 
// Design Another Class

class Apartmen {
    var human: Human? = nil
}

//: Initialize
var istanbulApartmen = Apartmen()
istanbulApartmen.human = Human(name: "Samet Yatmaz")

//Force Unwrapping
istanbulApartmen.human?.sayHello()
let name = istanbulApartmen.human!.name
print(name)

//Implicit Unwrapping
let izmirApartmen = Apartmen()
izmirApartmen.human = Human(name: "Samet Yatmaz")
izmirApartmen.human?.name
print(izmirApartmen.human?.name)

if let residentName = izmirApartmen.human?.name {
    print(residentName)
} else {
    print("No name available")
}
