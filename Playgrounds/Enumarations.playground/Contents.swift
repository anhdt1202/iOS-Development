import UIKit

//enumaration syntax
enum CompassPoint {
    case north
    case south
    case east
    case west
}
//multiple cases can appear on a single line, separated by commas:
enum Planet {
    case mercury, venus, earth, mar, juptiter, saturn, uranus, neptune
}
var directionToHead = CompassPoint.west
directionToHead = .east
//matching enumaration values with a switch statement
switch directionToHead {
case .east:
    print("Ty ngu")
case .north:
    print("Ty ngu 1")
case .south:
    print("Ty ngu 19")
case .west:
    print("Ty ngu 1997")
}
//iterating over enumration case
enum Beverage: CaseIterable {
    case coffe, tea, juice
}
let numberOfChoice = Beverage.allCases.count
print("\(numberOfChoice) beverages available")
for beverage in Beverage.allCases {
    print(beverage)
}
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}
var productBarcode = Barcode.upc(8, 80808, 686868, 3)
productBarcode = .qrCode("ABCNOFHEIOFHIORG")
switch productBarcode {
case let .upc(numberSystem, manufacter, product, check):
    print("UPC: \(numberSystem), \(manufacter), \(product), \(check).")
case let .qrCode(productCode):
    print("QR code: \(productCode)")
}
//Raw values
enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}
//implicity assigned raw values
enum Planet2: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
enum CompassPoint2: String {
    case north, east, sout, west
}
//initializing from a raw value
let possiblePlanet = Planet2(rawValue: 7)
let positionToFind = 6
if let somePlanet = Planet2(rawValue: positionToFind){
    switch somePlanet {
    case .earth:
        print("Mostly harmless")
    default:
        print("Not a safe place for humasn")
    }
}else {
    print("There is not a planet at position \(positionToFind)")
}
//recursive enumarations
enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case muliplication(ArithmeticExpression, ArithmeticExpression)
}
let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.muliplication(sum, ArithmeticExpression.number(2))
func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .muliplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}
print(evaluate(product))
