import UIKit


/*
    Intro to Error Handling
Problem:
    1-Warn your co-workers the function can cause dangerous results.
    2-Understanding of a do-try block
    3-Distinguish between try?,try!, and try
 */

func checkHeight(height: Int) {
    if height > 200 {
        print("You are going to hit your head and fall off")
        //Take him/her off from the ride
        //Code..
    } else if height < 140 {
        print("You might flt in the air")
        //Tke him/her off from the ride
        //Code...
    } else {
        print("Enjoy")
        //Take him/her to the ride
        //Code...
    }
}


// Problem with an else-if statement

//Problem 1: Bloated Function
//Problem 2: Modurality

// Note
// Error Handling is just another way to write an else-if statement t deal with error messages

// Design Error (1/3)
enum HeightError: Error {
    case maxHeight
    case minHeight
}

// Call Function (2/3)
func checkHeightError(height: Int) throws {
    if height > 200 {
        throw HeightError.maxHeight
    } else if height < 140 {
        throw HeightError.minHeight
    } else {
        print("Enjoy")
    }
}

// Handle with Error (3/3)
do {
    try checkHeightError(height: 400)
} catch HeightError.maxHeight {
    print("You are too tall")
} catch HeightError.minHeight {
    print("You are too short")
}


//1-Design Error
enum WeightError: Error {
    case maxWeight
    case minWeight
}

//2- Call Function
func checkWeightError(weight: Int) throws {
    if weight > 300 {
        throw WeightError.maxWeight
    } else if weight < 150 {
        throw WeightError.minWeight
    } else {
        print("Enjoy")
    }
}

//3- Handle with Error
do {
    try checkWeightError(weight: 400)
} catch WeightError.maxWeight {
    print("You are too big")
} catch WeightError.minWeight {
    print("You are too small")
}


//: Error Handling with Object Initialization

// Design Error
enum NameError: Error {
    case noName
}

// Design Class
class Course {
    var name: String
    
    init(name: String) throws {
        if name == "" {
            throw NameError.noName
        } else {
            self.name = name
            print("Hey, you have created an object!")
        }
    }
}

do {
    let myCourse = try Course(name: "Learn Swift with Samet")
} catch NameError.noName {
    print("Make sure enter your name please")
    //More Code...
}

//: Distinguish 'try?', 'try!', and 'try'

// try?

// if error not thrown, --> optional
// if error thrown --> nil
let newCourse = try? Course(name: "Samet the Developer")

// try!

let myNewCourse = try! Course(name: "Samet Yatmaz")
//let myDopeNewCourse = try! Course(name: "")


// Design Error
enum VariableError: Error {
    case title
    case detail
    case all
}

// Design Struct
struct Identity {
    public let title: String
    public let detail: String
    
    init(title: String, detail: String) throws {
        if title == "", detail == "" {
            throw VariableError.all
        } else if title == "" {
            throw VariableError.title
        } else if detail == "" {
            throw VariableError.detail
        } else {
            self.title = title
            self.detail = detail
            print("Enjoy")
        }
    }
}

// Object Initialize
do {
    let identity = try Identity(title: "", detail: "")
    //let identity = try Identity(title: "iOS Developer", detail: "")
    //let identity = try Identity(title: "", detail: "5 years experience")
    //let identity = try Identity(title: "Lead iOS Engineer", detail: "6 plus experience")
} catch VariableError.all {
    print("Both are empty")
} catch VariableError.title {
    print("you should enter title")
} catch VariableError.detail {
    print("you should enter detail")
}
