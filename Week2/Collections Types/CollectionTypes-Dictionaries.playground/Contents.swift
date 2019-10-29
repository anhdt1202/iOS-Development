import UIKit

var namesOfIntegers = [Int: String]()

//initializing a pair of (key-value) to dictionaries
namesOfIntegers[16] = "sixteen" //now contains  1 key-value pair
//empty dictionary
namesOfIntegers = [:] //now dictionary is empty

//creating a dictionary with a dictionary literal
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
print(airports.count) //dictionaries contains 2 items
airports["LHR"] = "London" //dictionaries contains 3 items

if let oldValue = airports.updateValue("Dublin airport", forKey: "DUB")
{
    print(oldValue)
} //updateValue(_: forKey:) return the oldValue, coder easier to check whether or not update
//retrieve a value from the dictionary for a particular key
if let airportName = airports["YYZ"]{
    print("The name of airports is \(airportName)")
}else{
    print("The airport is not in the airport dictionary")
}
//remove a key-value from dictionary 
airports["APL"] = "Apple International" //now key-value APL-Apple International is add to dictionary
airports["APL"] = nil //APL has now been remove from dictionary
print(airports)
//remove a key-value with removeValue(forKey:)
airports.removeValue(forKey: "DUB") //the key-value DUB-Dublin airport is remove 
print(airports)
//iterating over a Dictionary
for (airportCode, airportName) in airports {
    print("The airport code \(airportCode) is named \(airportName)")
}
//iterable collection of a dictionary's key or values.
for airportCode in airports.keys {
    print(airportCode)
}
for airportName in airports.values{
    print(airportName)
}
//initialize a new array with the keys or valuese property
let airportCode = [String](airports.keys)
let airportName = [String](airports.values)
print(airportCode)
print(airportName)

