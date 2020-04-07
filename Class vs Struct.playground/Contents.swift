import UIKit


/*
    Class vs Struct
    
    Introduction
        There two objectives. First, you will learn the fundamental difference between structs and classes by understanding value types and reference types. Second, you will discover why structs do not provide inheritance.
 */

/*
    Problem
    1- What are the differences besides inheritance?
    2- When to use structs over classes?
 */

//  Design Class

/*
    To demonstrate the difference between classes and structs, first design a class,
    HumanClass that has a name property
*/

class HumanClass {
    var name: String
    init(name: String) {
        self.name = name
    }
}

// Create Instance
var humanClassObject = HumanClass(name: "Samet")
print(humanClassObject.name)

let newHumanClassObject = humanClassObject
humanClassObject.name = "Samet Yatmaz"

// Change the name property of newHumanClassObject to "Samet Yatmaz".

print(newHumanClassObject.name)
print(humanClassObject.name)

// the name property of newHumanClassObejct has been changed to "Samet Yatmaz" as well
print("********************")

// Design Struct
struct HumanStruct {
    var name: String
    init(name: String) {
        self.name = name
    }
}

// Create Instance
var humanStructObject = HumanStruct(name: "Samet")
print(humanStructObject.name)

// Change the name property of humanStructObject to "Samet Yatmaz"

var newHumanStructObject = humanStructObject
humanStructObject.name = "Samet Yatmaz"

// On the contrary, the change on the name property of structObject has no effect on newHumanStructObject.name


print(newHumanStructObject.name)
print(humanStructObject.name)


/*
                        VALUE TYPE                       REFERENCE TYPE
                    humanStructObject                HumanClass (name: "Samet")
                                                        /              \
                    newHumanStructObject        humanClassObject and newHumanClassObject
 

    
            Note: The difference between Value and Reference Types
 */


/*
    Classes
    Note: For classes, when you create an instance that "copies", the new instance shares the object with the original instance.
 */

let newClassObject = humanClassObject //share

/*
    Structs
    Note: For structs, when you create and instance that "copies", the new instance creates
         an identical copy of the object
 */

let newStructObject = newHumanStructObject //copy-paste


/*
    Mutability
    Due to the fundamental difference, there is an interesting discrepancy
    when it comes to creating instances with let.

 */

// Mutability in Classes

class SametClass {
    var name = "Samet"
}

//Create Instance
let sametClass = SametClass()
sametClass.name = "Samet Yatmaz"

let newSametClass = sametClass

newSametClass.name = "Samet the Developer"
print(sametClass.name)

/*
    Note: Although the instance, sametClass has been created with let, the property of it has been mutated.
         It is possible since the instance does not own the object. Instead, it has a reference to the
         sametClass object in the cloud/RAM
 
 */

// No Mutability in Structs
struct SametStruct {
    var name = "Samet"
}

let sametStruct = SametStruct()
print(sametStruct)

sametStruct.name = "Samet Yatmaz"   //Error: Immutable

/*
    Note: With structs, when an instance is created with a constant, let, it is not possible to mutate its property since the instance has its own copy and the let protects anyone from interfering wirh its own instance.
    Important: Value types "store", while reference types "point".
 */

/*
    When to use Struct/Value Type?
    1- 1,000 - 1,000,000 faster than classes
    2- No mutabilty due to no relationship between
    3- Non-nested structure
 */
