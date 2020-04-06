import UIKit



/*
    Subscripts
    Problem: When I creat an object, I want a shortcut without calling a method
 */

// Normal Method

struct HelloKitty {
    func saySomething() -> String {
        return "I'm Cute"
    }
    subscript() -> String {
        return "Hello"
    }
}

HelloKitty().saySomething()
HelloKitty()[] // This is a problem


//: Introducing Subscripts
struct WeekDays {
    var days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
    subscript(index: Int) -> String {
        return days[index]
    }
}

let myDays = WeekDays()
myDays[2] //"Wednesday"

//: Dictionary
var info = ["Height": 183, "Body Fat": 12.5, "Weight": 76]

let height = info["footsize"]

struct HealthInfo {
    var info = ["Height": 183, "Body Fat": 12.5, "Weight": 76]
    subscript(key: String) -> Double {
        if let newInfo = info[key] {
            return newInfo
        } else {
            return 0
        }
    }
}

let sametInfo = HealthInfo()
let myHeight = sametInfo["Height"]
let realHeight = sametInfo["Height"]


/*
    Usage Case
    1- Get the number of rows in table/collection
    2- Anything has to do with pair and value
 */


//: Shotcoming of Subscript
// No Context = ☠️


//Example...

struct Collections {
    var numbers: [Int] = []
    
    subscript(index: Int) -> Int {
        return numbers[index]
    }
    mutating func getData(index: Int) -> Int {
        return numbers[index]
    }
}

var myCollection = Collections(numbers: [5, 7, 10, 24])
print(myCollection[2])
print(myCollection.getData(index: 3))

