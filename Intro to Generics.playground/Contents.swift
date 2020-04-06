import UIKit

/*
 Into to Generic
 Problem: I smell something
 */

/*
 Code Smell Means
   - Omen that causes bad future
 
 Universal Smell
   - Needless complexity
   - Duplication
   - Overused typed literals
   - Over usage of var instead of let
 */

let highSchoolGPA = [2.8, 3.2, 3.5, 3.8, 3.5]
let favoritePeople = ["Steve Jobs", "Elon Musk", "Kevin O'leary"]
let favoriteNumbers = [7, 10, 24]

//: Worst
highSchoolGPA[0]
highSchoolGPA[1]
highSchoolGPA[2]

//: Typical Solution
func printDoubleElement(array: [Double]) {
    for gpa in array {
        print(gpa)
    }
}

func printStringPeople(array: [String]) {
    for person in array {
        print("I love \(person)")
    }
}

func printFavoriteNumbers(array: [Int]) {
    for number in array {
        print("I like \(number)")
    }
}

//printDoubleElement(array: highSchoolGPA)

//: Introducing Generics 
func genericFunction<anything>(value: anything) {
    print(value)
}

//genericFunction(value: "Samet")
//genericFunction(value: 1234123)
//genericFunction(value: 12.4356)

func genericfunction<T>(value: T) {
    print(value)
}

func printElement<T>(array: [T]) {
    for element in array {
        print(element)
    }
}

printElement(array: highSchoolGPA)
printElement(array: favoritePeople)
printElement(array: favoriteNumbers)

/*
    Note: Generic code enables you to write flexible, reusable functions and types that can work with any type,
          subject to requirements that you define
 */

//: Struct Met Generics
// Non-Generic code

struct Family {
    var members: [String] = []
    
    mutating func push(member: String) {
        members.append(member)
    }
}

var myFamily = Family()
myFamily.push(member: "Samet")
myFamily.members


struct GenericFamily<T> {
    var members: [T] = []
    
    mutating func pushMember(member: T) {
        members.append(member)
    }
}

//: Generic Initialization
// T Implicitly Defined
let myHappyFamily = GenericFamily(members: [1, 2, 3, 4, 5])

//T Explicitly Defined
var genericFamily = GenericFamily<Int>()
genericFamily.pushMember(member: 10)

//: Generic Extension
extension GenericFamily {
    var firstElement: T? {
        if members.isEmpty {
            return nil
        } else {
            return members.first!
        }
    }
}

genericFamily.firstElement

//: Type Constrait
class LOL {}
class BabyLol: LOL {}

let example = LOL()

func addLOLClassOnly<T: LOL>(array: [T]) { }
addLOLClassOnly(array: [LOL(), LOL(), LOL()])
addLOLClassOnly(array: [BabyLol(),  BabyLol()])
addLOLClassOnly(array: [example, example, example])

//Example...
let mainStoryBoardName = "Main"
let loginStoryBoardName = "Login"
let profileStoryBoardName = "Profile"

let mainViewControllerIdentifier = "MainViewController"
let loginViewControllerIdentifier = "LoginViewController"
let profileViewControllerIdentifier = "ProfileViewController"


func getViewController <T: UIViewController>(storyBoardName: String, viewControllerIdentifier: String) -> T {
    let storyboard = UIStoryboard(name: storyBoardName, bundle: nil)
    return storyboard.instantiateViewController(withIdentifier: viewControllerIdentifier) as! T
}

let mainViewController = getViewController(storyBoardName: mainStoryBoardName, viewControllerIdentifier: mainViewControllerIdentifier)
let loginViewController = getViewController(storyBoardName: loginStoryBoardName, viewControllerIdentifier: loginViewControllerIdentifier)
let profileViewController = getViewController(storyBoardName: profileStoryBoardName, viewControllerIdentifier: profileViewControllerIdentifier)
