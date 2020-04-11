import UIKit

/*
 
        Intro ro Operators
    Problem: Write less, produce more
    Note: An operator is a symbol of a function
 
 */
  

//: Unary operators
!true // false
!false // true

//: Binary operators
1 + 2
4 == 4
1 / 4
5 % 2

//: Ternary Operators
//: Typical Else-If
let iCanDrink = false

if iCanDrink {
    print("You may enter")
} else {
    print("No no")
}

//: Ternary Operator
iCanDrink == true ? print("You may enter") : print("No no")
iCanDrink ? print("You may enter") : print("No no")

//: Add odd/even numbers
var evenNumbers: [Int] = []
var oddNumbers: [Int] = []

for number in 1...50 {
    if number % 2 == 0 {
        evenNumbers.append(number)
    } else {
        oddNumbers.append(number)
    }
}

for number in 1...50 {
    number % 2 == 0 ? evenNumbers.append(number) : oddNumbers.append(number)
}
//: Unwrapping Optionals
var age: Int? = nil
var defaultAge: Int = 20

var finalUserAge = Int() // 0

if age != nil {
    finalUserAge = age!
} else {
    finalUserAge = defaultAge
}

//: Nil-Coalescing Operator
finalUserAge = age ?? defaultAge



/*
 *********************************************************************************************************************************************
 *********************************************************************************************************************************************
 *********************************************************************************************************************************************
 */


/*
        Typealias
    Problem: The parameters are unreadable and boring
 */

//: Typealias for 'String'

typealias Name = String

func insertName (name: Name) {
    print(name)
}

//: Typealias for Custom Class
class Employee {}

typealias MyEmployees = [Employee]
func listEmployees(enterEmployees: MyEmployees) {
    
}

listEmployees(enterEmployees: [Employee(), Employee()])

//: Typealias for Tuple
typealias GridPoint = (Int, Int)

func enterPoint(grid: GridPoint) {
    print(grid.0)
    print(grid.1)
}

enterPoint(grid: (1, 2))


//: ArrayType
let arrayOne: Array<String> = Array(["Samet", "Samet Yatmaz"])
arrayOne.count
arrayOne.isEmpty
let arrayTwo: [String] = ["Samet", "Samet Yatmaz"]


//: Dictionary Type
let dictOne: [String: Int] = ["Samet": 30, "Samet Yatmaz": 30]
let dictTwo: Dictionary<String,Int> = ["Samet": 30, "Samet Yatmaz": 30]


//: Optional Type
var optionalOne: String?
var optionalTwo: Optional<String> = nil

