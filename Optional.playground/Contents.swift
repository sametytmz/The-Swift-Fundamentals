import UIKit

/* MARK - Optionals

 Problem: Why do optionals exist?
 
 Rules
 1- Every variable type must be defined as Implicit or Explicit
 2- The type can be inferred based on the value
 3- Every normal type should have value associated
 */

// Implicit and Explicit Type

let name: String = "Samet"                  //Explicit
let newName = " Samet the  Developer"       //Implicit

let myAge: Int = 25                         //Explicit
let myBrotherAge = 35                       //Implicit
let GPA: Double = 2.20                      //Explicit


// Fetching Profile Picture

// If could return "URL" or "nothing"
let myface = "https://..."


// Introducing Optionals

// Optional type allows storing nil
let myName: String? = nil
let yourName: String? = "Samet"
print(myName)
print(yourName)

var sametAge: Int? = nil
var hakanAge: Int? = 27
let kralAge: Int? = 12

hakanAge = 17
sametAge = 42

print(hakanAge!)
print(sametAge)

/*
        Optional Rules

 1- Optionals do not interact with each other
 2- Convert Optionals to normal types, the process known as unwrapping
*/

// Optional Unwrapping
// Forced Unwrapping

let newSametAge = sametAge!
print(newSametAge)
let newKralAge = kralAge!
print(newKralAge)

//Problem
var image: String? = "Samet the Developer"
//image!


//  Implicit UNwrapping
// Conditional Statement
let imageFromFaceBook: String? = nil

if let normalImage = imageFromFaceBook {
    print(normalImage)
} else {
    print("There is no image")
}
