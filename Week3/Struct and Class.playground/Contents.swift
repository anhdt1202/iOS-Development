import UIKit

var str = "Hello, playground"
//definitation syntax
struct Resolution {
    var width = 1600
    var height = 900
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}
//struct and class instances
let someResolution = Resolution()
let someVideoMode = VideoMode()

//accessing properties
print("\(someResolution.width)")
print("\(someVideoMode.resolution.width)")
//memberwise initializers for structure types
let vga = Resolution(width: 640, height: 480)
print("Resolution of this vga is \(vga.width) x \(vga.height)")
//struct is values types
let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
print(cinema)
cinema.width = 2048 //now width = 2048 but the width of hd still 1920
print(hd.width)
//enum is value types
enum CompassPoint {
    case north, south, east, west
    mutating func turnNorth() {
        self = .north
    }
}
var currentDirection = CompassPoint.west
let rememberedDirection = currentDirection
currentDirection.turnNorth()
print("The current direction is \(currentDirection)")
print("The remembered direction is \(rememberedDirection)")

//class are reference types
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0
let alsoTenEight = tenEighty
alsoTenEight.frameRate = 30.0
print("The frameRate property of teneighty is now \(tenEighty.frameRate)")

//different between reference types and value types.

class Dog {
    var wasFed = false
}
let dog = Dog()
let puppy = dog
puppy.wasFed = true
dog.wasFed
puppy.wasFed

struct Cat {
    var wasFed2 = false
}
var cat = Cat()
var kitty = cat
kitty.wasFed2 = true
cat.wasFed2
kitty.wasFed2

//identity operators
if tenEighty === alsoTenEight {
    print("same Video Mode instance")
}
if puppy !== dog {
    print("Wow")
} else {
    print("Nope")
}
