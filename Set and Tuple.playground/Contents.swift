import UIKit

/*
    Introduction --> Set and Tuple
    Note: There are two objectives. The first is to learn how to group a list of items with sets. The second is to work with various types within a single variable/constant with tuples.
 */

/*
    Problem
    1-  I'd love to eliminate duplicated items: sets
    2-  I'd love to combine all kinds of types: tuples
 */

/*
    Introducing Sets
    Note: A set stores values of the same type in a collection with no defined ordering and no duplicated elements.
*/

//: Multiple ways to create Arrays
var arrayOne: [Double] = []
var arrayTwo = [Double]()

var arrayThree: Array<Double> = Array()
var arrayFour: Array<Double> = []
var arrayFive = Array([11123.08, 2134.23])
var arraySix = Array(1...100)
var arraySeven = Array(repeatElement("Samet", count: 10))

let name = "Samet"
let samet = String("Samet")



// Multiple Ways to Create Sets
// Set in Swift look similar to Array

var setOne: Set = [1, 2, 3, 4, 5]
var setTwo: Set<String> = ["Samet", "Samet Yatmaz", "Samet iOS Developer"]
var emptySet = Set<String>()
var setThree = Set(["samet", "Samet Yatmaz", "iOS Developer"])
var setFour = Set(repeatElement("Samet", count: 10))
var setFive = Set(1...100).sorted()

// Built-In Set Methods
// Similar to Array, Set contains default methods and properties

emptySet.insert("Samet")
emptySet.contains("Samet Yatmaz")
emptySet.remove("Samet")

// Create Two Arrays
/*
    You may convert Array to set, or view versa. In this example, let us convert Array to Set.
    First, create two arrays filled with odd and even numbers.
 */

var oddNumbers: [Int] = []
var evenNumbers: [Int] = []
var fiveNumbers = [Int]()
var threeNumbers = [Int]()

for number in 1...50 {
    if number % 2 == 0 {
        evenNumbers.append(number)
    } else {
        oddNumbers.append(number)
    }
}

// Ternary Operator
for number in 1...50 {
    (number % 2 == 0) ? evenNumbers.append(number) : oddNumbers.append(number)
    (number % 5 == 0) ? fiveNumbers.append(number) : fiveNumbers.append(number * 5)
    (number % 3 == 0) ? threeNumbers.append(number) : threeNumbers.append(number * 3)
}

// Check
oddNumbers
evenNumbers

// Convert Array to Set
var oddNumberSet = Set(oddNumbers)
var evenNumberSet = Set(evenNumbers)
var fiveNumberSet = Set(fiveNumbers)
var threeNumberSet = Set(threeNumbers)

// oddNumberSet and evenNumberSet no longer has defined order

/*
 Built-In Set Methods
    Set provides methods to work with multiple sets
    a.intersection(b)
    a.symmetricDifference(b)
    a.union(b)
    a.subtracting(b)
 */

// Union
oddNumberSet.union(evenNumberSet)

// Symmetric Difference
oddNumberSet.symmetricDifference(evenNumberSet)

// Intersection
oddNumberSet.intersection(evenNumberSet)

// Subtract
oddNumberSet.subtract(evenNumberSet)

var numberSet = Set([1, 2, 3])
let secondNumberSet = Set([1, 2])

//numberSet.union(secondNumberSet)
let apple = numberSet.symmetricDifference(secondNumberSet)
numberSet.intersection(secondNumberSet)
numberSet.subtract(secondNumberSet)
print(numberSet)



/*
    Subtract mutates oddNumberset. Therefore, the oddNumberSet instance must be var rather than let.
    You can predict whether a method is mutating or not based on the naming guide below.
*/

//: Filter / Sort
// Convert Sets to sorted Array
let sortedArray = evenNumberSet.sorted()
print(sortedArray)

// Functional Programming
let sortedArrayFromHighToLow = evenNumberSet.sorted { $0 > $1 }
print(sortedArrayFromHighToLow)

//: Practical Usage of Set
// 1. Finding unique letters
// 2. Finding unique visitors
// 3. Any game logic


let firstScore = (name: "Samet", score: 9)
firstScore.name
firstScore.score

//: Practical USage
let httpSuccess = (code: 200, description: "success")
httpSuccess.code
httpSuccess.description

//let httpFailture: [Any] = [401, "Fail"]

//: Bonus Tips
var (x, y, z) = (1, 2, 3)
print(x)
print(y)

var shoppingList = ["Eggs", "Milk", "Rice"]

for (index, value) in shoppingList.enumerated() {
    print(index, value)
}
