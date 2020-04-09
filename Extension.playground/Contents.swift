import UIKit


/*
    Introduction
    Problem
    1- I like to keep it short and modularized
    2- Prevent anything massive
 */

// Design Struct
// First, design a struct called, Bob. It contains two initialized properties: name and skill.

struct Person {
    var name = "Samet"
    var skill = "Work"
    
    init() {}
}

// Extend Struct
// You may "extend" the Samet struct and add all kinds of work
extension Person {
    var description: String {
        let myName = self.name
        let mySkill = self.skill    //object.name
        return "I'm \(myName), I know \(mySkill)"
    }
    
    init(enterSkill: String) {
        self.skill = enterSkill
        print("You have entered a new skill")
    }
    
     subscript(mySkill: String) -> String {
        return "This is your secret weapon"
    }
}

// Note: self refers to the object created by the struct.


//: Check
// Create an object called samet.

let samet = Person()
samet.description

// You may use init(enterSkill: String) from the extension block.

let newSamet = Person(enterSkill: "Drawing")
newSamet.description
let new: Int = Int()

/*
    Extend Swift Native Types
    Note: Remember, Int just a struct.
    Instead of creating a separate function, you may extend Int and add a property
 */

extension Int {
    var squared: Int {
        return self * self
    }
}

// Now, objects whose type is Int, contain the squared property.
let myNumber = 10
myNumber.squared

// The Rule
// You may not have a stored property within extension.

/*
    The Scope
    Note: As mentioned, extension allows developers to implement all kinds of features.
        --> Add computed instance properties and computed type properties
        --> Define instance methods and type methods
        --> Provide new initializers
        --> Define subscripts
        --> Define and use new nested types with enum/struct
        --> Make an existing type conform to a protocol
 */
