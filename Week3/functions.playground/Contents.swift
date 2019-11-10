import UIKit

//function basic declerated
func greet(person: String) -> String {
    let gereeting = "Hello," + person + "!"
    return gereeting
}
print(greet(person: "Fiber"))
print(greet(person: "Brian"))

//combine the message creation and the return statement into one line:
func greetAgain(person2: String) -> String {
    return "Hello again, " + person2 + "!"
}
print(greetAgain(person2: "Frankie"))

//Function parameters and return values
//functions without parameters
func sayHello() -> String {
    return "hello, world"
}
print(sayHello())
//function with multiple parameters
func greet(person: String, alreadyGreet: Bool) -> String {
    if alreadyGreet {
        return greetAgain(person2: person)
    }else {
        return greet(person: person)
    }
}
print(greet(person: "Tim", alreadyGreet: true))
//function without return values
func greetWithoutReturn(person: String) {
    print("Hello, \(person)")
}
greetWithoutReturn(person: "Dave")
//the value of function can be ignored when it is called:
func printAndCount(string: String) -> Int {
    print(string)
    return string.count
}
printAndCount(string: "hello from the other side")
func printWithoutCounting(string: String) {
    let _ = printAndCount(string: string)
}
printWithoutCounting(string: "hello from the other side")
//function with multiple return values
func minMax(array: [Int]) ->  (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        }else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
let bounds = minMax(array: [1, 3, 5, 6, 66, 44, 102, 54])
print("min is \(bounds.min) and max is \(bounds.max)")

//optional tuple return values
func minMaxOptionaltest(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty {
        return nil
    }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        }else if value > currentMax{
            currentMax = value
        }
    }
    return(currentMin, currentMax)
}
if let bounds = minMaxOptionaltest(array: [8, -6, 32, 44, -33, 21]) {
    print("min is \(bounds.min) and max is \(bounds.max)")
}
// function with an implict return
func greeting4(for person: String) -> String {
    "Hello, " + person + "!"
}
print(greeting4(for: "Dave"))
func anotherGreeting(for person: String) -> String {
    return "Hello, " + person + "!"
}
print(anotherGreeting(for: "Dave"))

//functin argument labels and parameter names
func someFunction(firstParameterName: Int, secondParameter: Int) {
    
}
someFunction(firstParameterName: 1, secondParameter: 2)
//specifying argument labels
func someFunction(argumentLabel parameterName: Int) {
    
}//write argumentLabel before parameterName
//axample
func greet5(person: String, from hometown: String) -> String {
    return "Hello \(person)! Glad you could visit from \(hometown)"
}
print(greet5(person: "Bill", from: "Hai Duong"))
// omitting argument labels. if u dont want an argument label for a parameter, usng a (_)
func someFunction3(_ firstParameterName: Int, seconParameterName: Int){
    
}
someFunction3(1, seconParameterName: 2)
// Default parameter values
func someFunction4(parameterWithoutDefault: Int, parameterWithDefault: Int=12){
    
}
someFunction4(parameterWithoutDefault: 3, parameterWithDefault: 6) //parameterwithdefault is 6
someFunction4(parameterWithoutDefault: 4) //parameterwithdefault is 12
//variadic parameters
func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
arithmeticMean(3, 8.25,18.75)
// In-out parameters
func swapTwoInts(_ a: inout Int, _ b: inout Int){
    let temp = a
    a = b
    b = temp
}
var someInt = 3
var anotherInt = 105
swapTwoInts(&someInt, &anotherInt)
print("someInt is \(someInt) and anotherInt is \(anotherInt)")

//function types
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}
var mathFunction: (Int, Int) -> Int = addTwoInts
print("Result: \(mathFunction(2, 3))")
mathFunction = multiplyTwoInts
print("\(multiplyTwoInts(2, 3))")

//function types as return types
func stepForward(_ input: Int) -> Int {
    return input + 1
}
func stepBackward(_ input: Int) -> Int {
    return input - 1
}
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}
var currentValue  = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
print("Counting to zero")
while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")

//nested function
func chooseStepFunction2(backward2: Bool) -> (Int) -> Int {
    func stepForward2(input: Int) -> Int { return input + 1 }
    func stepBackward2(input: Int) -> Int { return input - 1 }
    return backward2 ? stepBackward2 : stepForward2
}
var currentValue2 = -4
let moveNearedToZero2 = chooseStepFunction2(backward2: currentValue2 > 0)
while currentValue2 != 0 {
    print("\(currentValue2)...")
    currentValue2 = moveNearedToZero2(currentValue2)
}
print("zero!!")
