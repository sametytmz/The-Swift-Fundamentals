

// Type Casting
/*
 Problem:
    1- How do you distinguish between as, as?, as!?
    2- Why does Xcode keep telling me what to do?
 */


// Type Casting in UIKit
import UIKit

let label = UILabel() as UIView

//: Design Class
class Human {
    func introduce() {
        print("Hi, I am a human")
    }
}

//: Design Subclass
class Turkish: Human {
    func singKuzuKuzu() {
        print("işte kuzu kuzu geldim.")
    }
}

let samet = Turkish()
samet.introduce()
samet.singKuzuKuzu()

//: Type Casting
let newSamet = samet as Human
newSamet.introduce() // upcasting

//: > as --> Upcasting (Always works)

class Japanese: Human {
    func doNinja() {
        print("Shh....")
    }
}


//: Upcasting with Normal/Common Types
var name = "Samet" as Any
var number = 20 as Any

var anyArray = [name, number]
// Downcasting only occurs after upcasting
// Downcasting --> specific

//: ### Downcasting
//: Explicit/ Force Downcasting

let newValue = anyArray[1] as! Int  //normal type
//let anotherValue = anyArray[1] as! String

//: Implicit Downcasting (Safe)
let newNewVale = anyArray[0] as? Int
let newNewNewValue = anyArray[1] as? Int

//: Grouping
let hakan = Turkish()
let mert = Japanese()
let merve = Japanese()
let esma = Turkish()

//let humans: [Human] = [hakan as Human, mert as Human, merve as Human, esma as Human]
let humans: [Human] = [hakan, mert, merve, esma]

for human in humans {
    if let turko = human as? Turkish {
        turko.singKuzuKuzu()
    }
    
    if let japenese = human as? Japanese {
        japenese.doNinja()
    }
}



//: Practical Type Casting Usage
let loginButton = UIButton()
let loginMessage = UILabel()
let loginView = UIView()

let UIComponents = [loginButton, loginMessage, loginView]

for component in UIComponents {
    if let button = component as? UIButton {
        //Change background color
        //Add Title
        //...
    }
    
    if let label = component as? UILabel {
        //
    }
    
    if let view = component as? UIView {
        //
    }
}

//: Type Casting in UIKit
//let storyboard = UIStoryboard(name: "Main", bundle: nil)
//let vc = storyboard.instantiateViewController(withIdentifier: "VC") as UIViewController
