import Cocoa

// Day - 1
// How to create variable and constants

// variable
var greeting = "Hello, SwiftUI"
var name = "Dinesh"
name = "Nagarajan"
name = "DN"

// constants
let character = "SwiftUI"
// character = "" - Throws error saying constant value cant be changed.

// String with double quotes uses \"{value}\"
let quote = "The need for \"Doube Quote\" example"

// String with multiple line goes with """{value}""" and make sure to start the string in new line after the """
let multipleLineString = """
Line One
Line Two
Line Three
"""

// get the length of string
print(greeting.count)

// all uppercase
print(greeting.uppercased())

// all lowercase
print(greeting.lowercased())

// hasPrefix() whether a string starts with some text
multipleLineString.hasPrefix("Line")
multipleLineString.hasPrefix("One")

// hasSuffix() where a string end with some text
multipleLineString.hasSuffix("Three")
multipleLineString.hasSuffix("One")

let fileName = "image.jpeg"
print(fileName.hasSuffix(".jpeg"))

// How to store whole numbers
let score = 10
let reallyBig = 100000000
// Same
// let reallyBig = 100_00_00_00
// let reallyBig = 1_00___00___00___00

let lowScore = score - 2
let highScore = score + 10
let doubleScore = score * 2
let squareScore = score * score
let halvedScore = score / 2

var counter = 10
counter = counter + 5
// can use any operator to perform the same
counter += 5

// isMultiple(of:) to find out whether it's a multiple of another integer
120.isMultiple(of: 9)

// How to store decimal numbers
// Convert decimal to int and int to double
Int(10.9)
Double(9)

// How to store boolean
// toggle() to switch bool value
var goToggle = true
goToggle.toggle()

// How to join strings together
"Check this \(greeting)"

// How to store ordered data in arrays
var stringArray = ["a", "b", "d", "c"]
var numberArray = [1, 2]
let firstString = stringArray.first // [0] can also be used
var lastNumber = numberArray.last

// declare array of int
var dec = [Int]() // Array<Int>()

// Add value to array
stringArray.append("c")

// get array count
stringArray.count

// To remove a value from array in specific count
//stringArray.remove(at: 1)

//stringArray.removeAll()


// Check array contain a value
stringArray.contains("a")

// Sort array
stringArray.sorted()

// reverse array
stringArray.reverse()

// How to store and find data in dictionary
var employee = ["name": "Dinesh N", "job": "Developer", "location": "Trichy"]
employee["name"]
employee.count
employee.removeAll()

// How to create and use enums
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

// simplified version
/**
 enum Weekday {
     case monday, tuesday, wednesday, thursday, friday, saturday, sunday
 }
 */

// Consitional statements
// if, if..else,

let day = 5
print("My true love gave to me…")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

// Switch case

// Ternary operator
// For loop
// While loop

var number = 10

while number > 0 {
    print(number)
    number -= 1
}


Int.random(in: 1...2)

// Return multiple values from a function
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Dinesh", lastName: "Nagarajan")
}

getUser().firstName

// Using external and internal parameter name in function. Here for is external value and value is for internal use.
func printValue(for value: String) {
    print(value)
}

printValue(for: "Dinesh")

// How to provide default values for parameters
func printNumber(firstNumber: Int, defaultNumber: Int = 10) {
    print("firstNumber: \(firstNumber), defaultNumber: \(defaultNumber)")
}

printNumber(firstNumber: 0, defaultNumber: 1)

// How to handle errors in functions
// Error enum
enum PasswordError: Error {
    case short, obvious
}

// function which trows error or string
func checkPassword(password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

do {
    try checkPassword(password: "a")
} catch { error
    print("error \(error)")
}

// handle error gracefully
do {
    try checkPassword(password: "12345")
    print("success")
} catch PasswordError.short {
    print("Short password error handle")
} catch PasswordError.obvious {
    print("Obvious password error handle")
} catch {
    print("Default error case")
}

// How to create and use closures

func greetUser() {
    print("Hi, there!")
}
greetUser()

var greetCopy: () -> Void = greetUser
greetCopy()

func makeArray(size: Int, using generator: (_ range: Int) -> Int) -> [Int] {
    var numbers = [Int]()
    for _ in 0..<size {
        let newNumber = generator(20)
        numbers.append(newNumber)
    }
    return numbers
}

makeArray(size: 10) { range in
    Int.random(in: 1...range)
}

let luckyNumber = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let v = luckyNumber.filter { value in
    !value.isMultiple(of: 2)
}
var vSorted = v.sorted()
vSorted.map { value in
    print("\(value) is a lucky number")
}

// Create your own struct
struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) \(year) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
red.printSummary()

struct Employee {
    let name: String
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
    var vacationAllocated = 14
    var vacationTaken = 0
    
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationTaken += days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

//var employeeOne = Employee(name: "Dinesh")
//employeeOne.takeVacation(days: 1)

var archer = Employee(name: "Archer", vacationAllocated: 14)
archer.vacationRemaining
archer.vacationTaken += 4
archer.vacationTaken
archer.vacationRemaining = 5
archer.vacationRemaining
print(archer.vacationAllocated)

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        
        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Person One")
app.contacts.append("Person Two")
app.contacts.append("Person Three")

// Static type
struct AppData {
    static let version = "1.0"
    static let saveFile = "settings.json"
    static let homeUrl = "www.home.com"
    let nonStaticValue = "non static"
}

AppData.version // nonStaticValue can't be accessed like this.

class Animal {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
    
    func speak() {
        print("Animal speak legs \(legs)")
    }
}

class Dogs: Animal {
    
    override init(legs: Int) {
        super.init(legs: legs)
    }
    
    override func speak() {
        print("Dogs leg: \(legs)")
    }
}

let animal = Animal(legs: 2)
animal.legs
animal.speak()

let dogs = Dogs(legs: 3)
dogs.legs
dogs.speak()

// How to create and use protocols
protocol Vehicle {
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }
    
    func openSunRoof() {
        print("Sun roof open.")
    }
}

struct Bicycle: Vehicle {
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    
    func travel(distance: Int) {
        print("I'm cycling \(distance)km.")
    }
    
    
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow I'll try diff vehicle")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
commute(distance: 60000, using: car)

let bicycle = Bicycle()
commute(distance: 100, using: bicycle)

// How to use opaque return type
func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 20) {
    print("User: \(user)")
}

let u = (try? getUser(id: 33)) ?? "D"
