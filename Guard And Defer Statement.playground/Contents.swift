import UIKit

/*
    Guard And Defer Statement
 
    Problem:
        1- Is there any alternative to write and else-if statement?
        2- How do you safely unwrap multiple optionals?
 */


/*  **************NOTE**************
    Zenness: A trait where peace, calmness and inner awesomeness are all intertwined
*/


func checkDrinkingAge() {
    let canDrink = true
    
    if canDrink {
        print("you may enter")
        //More
        //More code
    } else {
        //More
        //More code
        print("Let me take you to he jail")
    }
    
}


//  Issue with Else-If

//1. Nested Brakets
//2. Have to read all

 //Introducing Guard

let iCanDrink = false

func checkDrinkingAges() {
    
    guard iCanDrink else {
        //iCanDrink == false
        //iCanDrink == true // simply ignore the guard block
        print("You can not drink, let me take you to the jail")
        return
    }
    
    print("Enjoy your night")
}

checkDrinkingAges()

//: ###Unwrapping Optionals
var publicName: String? = "Samet Yatmaz"
var publicPhoto: String? = "Samet's Face"
var publicAge: Int? = 25

//:  The Worst Nightware
func unwrapOneByOne() {
    if let name = publicName {
        if let photo = publicPhoto {
            if let age = publicAge {
                print("Samet: \(name), \(photo), \(age)")
            } else {
                print("age is missing")
            }
        } else {
            print("photo is missing")
        }
    } else {
        print("name is missing")
    }
}


unwrapOneByOne()

//:  Slightly Better
func unwrapBetter() {
    if let name = publicName {
        print("Yes name: \(name)")
    } else {
        print("No name")
    }
    
    if let photo = publicPhoto {
        print("Yes photo: \(photo)")
    } else {
        print("No photo")
    }
    
    if let age = publicAge {
        print("Yes age: \(age)")
    } else {
        print("No age")
    }
}

unwrapBetter()


//:  Introducing Guard Statement
func unwrapOneByOneWithGuard() {
    
    guard let name = publicName else {
        print("Name is missing")
        return
    }
    
    guard let photo = publicPhoto else {
        print("Photo is missing")
        return
    }
    
    guard let age = publicAge else {
        print("Age is missing")
        return
    }
    
    print("name: \(name)")
    print("photo: \(photo)")
    print("age: \(age)")
}


//:  Unwrap multiple optionals with 'else-if'
func unwrap() {
    if let name = publicName, let photo = publicPhoto, let age = publicAge {
        print("Your name is \(name). I see your face right here, \(photo), you are \(age) years old.")
    } else {
        print("Something is missing")
    }
}

unwrap()

//:  Unwrap multiple optionals with 'guard'
func unwrapWithGuard() {
    guard let name = publicName, let photo = publicPhoto, let age = publicAge else {
        print("Something is missing")
        return
    }
    print("Your name is \(name). I see your face right here, \(photo), you are \(age) years old.")
    
    //Animation Logic
    //Networking
    //More Code, but still zen
}

unwrapWithGuard()


/*  Introducing Defer Statement
    Note Defer Statement: Put off(an action or event) to a later time; postpone. In Swift, it will execute a block of code until the current scope (loop, method, etc) exits.
 */

func simpleDefer() {
    defer {
        print("Samet, later")
    }
    
    print("Print First")
}

simpleDefer()

for i in 1...3 {
    defer {
        print("Defer \(i)")
    }
    print("First \(i)")
}
