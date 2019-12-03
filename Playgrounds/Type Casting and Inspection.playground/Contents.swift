import UIKit

//type casting
class Vehicle {
    func doSomething() {
        
    }
}
class Bike: Vehicle {
    func run() {
        
    }
}
class Car: Vehicle {
    func doCarAction() {
        
    }
}
let car = Car()
let bike = Bike()
let vehicles = [car, bike]
for vehicle in vehicles {   //check type, return true if object is types we check, or false if not
    if vehicle is Car {
        print("this is a car")
    }else if vehicle is Bike {
        print("this is a bike")
    }
}
//downcasting
let vehicle1 = vehicles[0] as? Bike
//let vihicle1 = vehicles[0] as! Bike // return an object when vehicles[0] is bike,but the programs is crash
let vehicle2 = vehicles[0] as? Car //return
if let bike = vehicles[0] as? Bike {
    bike.run()
} //we should check type casting like that
// upcasting
if let bike = vehicles[0] as? Bike {
    let vehicleBike = bike as Vehicle
    vehicleBike.doSomething()
}
//extended type casting for any and anyObject
//example as in switch
var groups = [Any]()
groups.append(1.0)
groups.append(1)
groups.append("String")

for item in groups {
    switch item {
    case _ as Int:
        print("the \(item) is an int")
    case _ as Double:
        print("the \(item) is a Double")
    case _ as String:
        print("the \(item) is a String")
    default:
        print("dunno")
    }
} //note* : as? and as! dont use in switch

for vehicle3 in vehicles {
    switch vehicle3 {
    case is Bike:
        print("this is bike")
    case is Car:
        print("this is car")
    default:
        print("Anything?")
    }
}
