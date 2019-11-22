import UIKit

//protocol syntax
protocol SomeProtocol {
    var mustBeSettable : Int { get set }
    var doesNotNeedToBeSettable: Int { get }
}
//property requirements
protocol AnotherProtocol {
    static var someTypeProperty: Int { get set }
}
protocol FullyNamed {
    var fullName: String { get }
}
struct Person: FullyNamed {
    var fullName: String
}
let john = Person(fullName: "John Appleseed")
print(john.fullName)

class Starship: FullyNamed {
    var prefix: String?
    var name: String
    init(name: String, prefix: String? = nil) {
        self.name = name
        self.prefix = prefix
    }
    var fullName: String {
        return(prefix != nil ? prefix! + " " : " ") + name
    }
    
}
var ncc1701 = Starship(name: "Enterprise", prefix: "USS")
print(ncc1701.fullName)
    
//method requirements
//protocol SomeProtocol {
//    static func someTypeMethod()
//}
protocol RandomNumberGenerator {
    func random() -> Double
}
class LinearCongruenialGeneration: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    func random() -> Double {
        lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy: m))
        return lastRandom / m
    }
}
let genarator = LinearCongruenialGeneration()
print("Here's a random number: \(genarator.random())")
print("Add another one: \(genarator.random())")

//mutating method requirements
protocol Togglable {
    mutating func toggle()
}
enum OnOffSwitch: Togglable {
    case off, on
    mutating func toggle() {
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
}
var lightSwitch = OnOffSwitch.off
lightSwitch.toggle()

////initializer requirments
//class SomeClass: SomeProtocol {
//    required init(someParameter: Int){
//
//    }
//
//}
//If a subclass overrides a designated initializer from a superclass, and also implements a matching initializer requirement from a protocol, mark the initializer implementation with both the required and override modifiers:

//protocol SomeProtocol {
//    init()
//}
//
//class SomeSuperClass {
//    init() {
//        // initializer implementation goes here
//    }
//}
//
//class SomeSubClass: SomeSuperClass, SomeProtocol {
//    // "required" from SomeProtocol conformance; "override" from SomeSuperClass
//    required override init() {
//        // initializer implementation goes here
//    }
//}

//Protocols as Types
class Dice {
    let sides: Int
    let generator: RandomNumberGenerator
    init(sides: Int, generator: RandomNumberGenerator) {
        self.sides = sides
        self.generator = generator
    }
    func roll() -> Int {
        return Int(generator.random() * Double(sides)) + 1
    }
}
var d6 = Dice(sides: 6, generator: LinearCongruenialGeneration())
for _ in 1...5 {
    print("Random dice roll is \(d6.roll())")
}

//delegation
protocol DiceGame {
    var dice: Dice { get }
    func play()
    }
protocol DiceGameDelegate: AnyObject {
    func gameDidStart(_ game: DiceGame)
    func game(_ game: DiceGame, didStartNewTurnWinDiceRoll diceRoll: Int)
    func gameDidEnd(_ game: DiceGame)
}


