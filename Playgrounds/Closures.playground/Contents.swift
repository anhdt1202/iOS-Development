import UIKit

//Closures Expressin syntax
let names = ["Anh", "Trang", "Tung", "Ty", "Mong"]
var reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
    } )
//inferring type from context
var reversedNames2 = names.sorted(by: { s1, s2 in return s1 > s2 })
print(reversedNames2)
//implicit returns from single-expression closures
var reversedNames3 = names.sorted(by: { s1, s2 in s1 > s2 })
//shorthand argument names
var reversedNames4 = names.sorted(by: { $0 > $1 })
var reversedNames5 = names.sorted(by: >)
// trailing closures
let digitNames = [
    0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]
let strings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
       print(output)
        number /= 10
        print(number)
    } while number > 0
//    print(output)
    return output
}
//capturing values
func makeIcrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}
let incrementByTen = makeIcrementer(forIncrement: 10)
incrementByTen()
incrementByTen()

//escaping closures
var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}
func someFunctionWithNonescapingClosure(closure: () -> Void) {
    closure()
}
class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure { self.x = 100 }
        someFunctionWithNonescapingClosure { x = 200 }
    }
}
let instance = SomeClass()
instance.doSomething()
print(instance.x)
completionHandlers.first?()
print(instance.x)

var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count)

let customerProvider = { customersInLine.remove(at: 0) }
print(customersInLine.count)
print("Now serving \(customerProvider())!")
print(customersInLine.count)
