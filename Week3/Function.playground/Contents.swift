import UIKit

//define func
func triple(value: Int){
    let result = value * 3
    print("If you multiply \(value) by 3,u'll get \(result)")
}
triple(value: 10)

//multiple arguments to a function
func multiply(firstNumber : Int, secondNumber : Int){
    let result = firstNumber * secondNumber
    print("The result is \(result)")
}
multiply(firstNumber: 3, secondNumber: 7)

//argument labels
func sayHello(to : String, and : String){
    print("say Hello, \(to) and \(and)!")
}
sayHello(to: "Anh", and: "Trang")
//external name to clearly
func sayGoodbye(to person: String, and another: String){
    print("\(person) say goodbye \(another)")
}
sayGoodbye(to: "Chu", and: "Ty")
//use _
func sayLove(_ boy: String, _ girl: String){
    print("\(boy) love \(girl)")
}
sayLove("Ty", "Chu")

//default parameter values
func display(teamName: String, score: Int = 0){
    print("\(teamName) : \(score)")
}
display(teamName: "ManU", score: 7)
//return values
func multiply2(firstNumber : Int, secondNumber : Int) -> Int {
    let result = firstNumber * secondNumber
    return result
}
let myResult = multiply2(firstNumber: 10, secondNumber: 5)
print("10 * 5 is \(myResult)")

//Structures
//declerated a structures
struct Person {
    var name: String
}
let firstPerson = Person(name: "Lampard")
print(firstPerson.name)
//add a function into structures
struct Football {
    var club: String
    func message()  {
        print("\(club) is the champaion")
    }
}
let newFootball = Football(club: "Chelsea")
newFootball.message()


