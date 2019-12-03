import UIKit

//initializers
struct Fahrenheit {
    var temperature: Double
    init() {
        temperature = 32.0
    }
}
var f = Fahrenheit()
print("The default temperature is \(f.temperature)° Fahrenheit")
    
//Customizing Initialization
//initialization parameters
struct Celsius {
    var temperatureCelcius: Double
    init(fromFahrenheit fahrenheit: Double) {
        temperatureCelcius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureCelcius = (kelvin - 273.15)
    }
}
let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
let freezingPointOfWater = Celsius(fromKelvin: 273.15)
print("The boiling point of water is \(boilingPointOfWater.temperatureCelcius)°C")
print("The freezing point of water is \(freezingPointOfWater.temperatureCelcius)°C")

//parameter names and argument labs
struct Color {
    let red, green, blue: Double
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.blue = blue
        self.green = green
    }
    init(white: Double) {
        red = white
        green = white
        blue = white
    }
    
}
let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
let halfGray = Color(white: 0.5)
//let veryGreen = Color(0.0, 1.0, 0.0)  //this line make compile error - argument labels are required

//Initializer parameters without argument labels
struct Centimeter {
    var longdistance: Double
    init(fromMeter meter: Double) {
        longdistance = meter / 100
    }
    init(fromDecima decima: Double) {
        longdistance = decima / 10
    }
    init(_ centimeter: Double) {
        longdistance = centimeter
    }
}
let thedistance = Centimeter(39.4)
print("the distance is \(thedistance.longdistance) (cm)")

//optional property types
class SurveyQuestion {
    var text: String
    var response: String?
    init(text: String) {
        self.text = text
    }
    func ask() {
        print(text)
    }
}
let cheeseQuestion = SurveyQuestion(text: "Do you like cheese?")
cheeseQuestion.ask()
cheeseQuestion.response = "Nope, like cc"

//Assigning Constant Properties During Initialization
class SurveyQuestion2 {
    let text: String
    var response: String?
    init(text: String) {
        self.text = text
    }
    func ask() {
        print(text)
    }
}
let beetsQuestion = SurveyQuestion2(text: "How about beets?")
beetsQuestion.ask()
beetsQuestion.response = "I also like beets. (But not with cheese)"

//Memberwise Initializers for Structure Types
struct Size {
    var width = 0.0, height = 0.0 
}
let twoByTwo = Size(width: 2.0, height: 1.5)
print(twoByTwo.height, twoByTwo.height)
let zeroByTwo = Size(height: 2.0)
print(zeroByTwo.height, zeroByTwo.width)

//Initializer Delegation for Value Types
struct Point {
    var x = 0.0 , y = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    init() {
    }
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}
let basicRect = Rect()
print(basicRect.origin, basicRect.size)
let originRect = Rect(origin: Point(x: 2.0, y: 2.0), size: Size(width: 5.0, height: 5.0))
print(originRect.origin, originRect.size)

//Class inheritance and Initialization

class Player {
    var lives: Int=100
    var strength: Int
    init(lives:Int, st:Int) {
        self.lives = lives
        self.strength = st
    }
    func Attack(p:Player) {
        p.lives -= self.strength
    }
}
let p1 = Player(lives: 100, st:15)
print(p1.lives)
p1.Attack(p: p1)
print(p1.lives)
let p2 = Player(lives: 80, st:30)
p2.Attack(p: p1)
print(p1.lives)

