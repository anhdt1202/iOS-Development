import UIKit

var str = "Hello, playground"
//Creating an Empty Array
var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items.")
someInts.append(3)
print("someIns is of type [Int] with \(someInts.count) items.The value of items are\\is: \(someInts)")
someInts = []
print("\(someInts.count)") //now someInts is an empty array

//Creating an Array with Default Value, adding two arrays together
var newArray1 = Array(repeating: 1.5, count: 6)
print(newArray1)
var anotherArray1 = Array(repeating: 2.0, count: 5)
var mergeArray = newArray1 + anotherArray1
print(mergeArray)

//Creating an Array with an Array Literal
var doingList: [String] = ["Eat", "Sleep", "Sex", "Defecation"]
for item in doingList {
print(item)
}

//Accessing and Modifying an Array
print("The doing list contain \(doingList.count) items.")
if doingList.isEmpty {
    print("The doing list is Empty")
}else {
    print("The doing list is not Empty")
}
doingList.append("Shopping")
print(doingList)
doingList += ["Cook", "Wash Dishing", "Cleaning"]
for item2 in doingList {
    print(item2)
}
doingList.insert("Toothbrush", at: 2)
doingList.remove(at: 3)
print(doingList)

//iterating over an array (line 21)
//enumerated index of each item in array
for(index, value) in doingList.enumerated(){
    print("Item\(index) : \(value)")
}




