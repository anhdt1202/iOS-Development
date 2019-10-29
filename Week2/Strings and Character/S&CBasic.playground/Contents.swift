import UIKit
//basic string
let greeting = "Hello"
var otherGreeting = "Salutations"

// decleration a multipe line string
let joke = """
Q : Why did the chicken cross the road?
A : To get to other side!
"""
print(joke)

//empty string
 let greeting2 = "It is traditional in progamming to print \"Hello, world!\""
var newString = ""
if newString.isEmpty{
    print("The string is empty")
}

//adding String
let string1 = "Hello"
let string2 = "Swift"
let addString = string1 + string2
print(addString)

//insert a raw value
let name = "Rick"
let age = 30
print("\(name) is \(age) years old")

//comparison string
let month = "July"
let othermonth = "July"
let lowercasemonth = "july"
if month == othermonth{
    print("They are the same")
}
if month != lowercasemonth{
    print("They are not the same")
}
//lowerCase,upperCase,Pre,Suf
let name2 = "Dang Tuan ANh"
if name2.lowercased() == "daNG tuAn anH".lowercased(){
    print("The two names are equal")
}
let testingString = "Give away!"
print(testingString.hasPrefix("Give"))
print(testingString.hasSuffix("away"))
print(testingString.hasSuffix("away!"))
//contain string, count string,
let testContainString = "This strong has a signal is \"contain string\""
if testContainString.contains("contain string"){
    print("the main string has contain the test string")
}
let count = testContainString.count
print(count)

