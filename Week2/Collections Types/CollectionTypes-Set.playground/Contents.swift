import UIKit

var str = "Hello, playground"
//Creating and Initializing an Empty Set
var letter = Set<Character>()
print("letter is set of type Set<Character> with \(letter.count) items.")
//insert value to set
letter.insert("a")
print("letters now contains \(letter.count) value of type Character this is \(letter)")
//empty set
letter = [] //now set is empty

//Creating a Set with an Array literal
var favoriteGenres: Set = ["Rock", "Ballad", "Rap"]
//accessing and modifying a set
print("I have \(favoriteGenres.count) favorite music genres.")
//use boolean to checking the count property equal to 0
if favoriteGenres.isEmpty{
    print("I hardly love music")
} else {
    print("I pretty love music and listen some genres")
}
//insert new items
favoriteGenres.insert("Jazz")
//remove items
favoriteGenres.remove("Jazz")
//contain
if favoriteGenres.contains("Rap"){
    print("I have listen Rap genres")
}else{
    print("I haven't listen Rap genres")
}
print(favoriteGenres)

//iterating over a set
for genre in favoriteGenres{
    print("\(genre)")
}
//ordering a set
for genre in favoriteGenres.sorted(){
    print("\(genre)")
}

//fundamental Set Operations
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumber: Set = [2, 3, 5, 7]
print(oddDigits.union(evenDigits).sorted())
print(oddDigits.subtracting(singleDigitPrimeNumber).sorted())
print(oddDigits.symmetricDifference(singleDigitPrimeNumber).sorted())
print(oddDigits.intersection(singleDigitPrimeNumber).sorted())

//Set membership Equality
let houseAnimal: Set = ["Dog", "Cat"]
let farmAnimal: Set = ["Cow", "Buffalo", "Chicken", "Dog", "Cat"]
let cityAnimal: Set = ["Bird", "Mouse"]
houseAnimal == cityAnimal  //false
houseAnimal.isSubset(of: farmAnimal)  //true
farmAnimal.isSuperset(of: houseAnimal)  //true
cityAnimal.isDisjoint(with: houseAnimal) //true
