import UIKit

//ínstance methods
class Counter {
    var count = 0
    func increment() {
        self.count += 1
    }
    func increment(by amount: Int)  {
        count += amount
    }
    func reset() {
        count = 0
    }
}
let counter = Counter()//the initial counter value is 0
counter.increment() //the counter value is now 1
print(counter.count)
counter.increment(by: 5) // the counter value is now 6
print(counter.count)
counter.reset() //the counter is reset 0 now
print(counter.count)

//The self properties
class Counter2 {
    var count = 0
    func decrement() {
        self.count -= 1
    }
}
let counter2 = Counter2()
counter2.decrement()
print(counter2.count)
//example2 about self
struct Point {
    var x = 0.0, y = 0.0
    func isToTheRight(x: Double) -> Bool {
        return self.x > x
    }
}
let somePoint = Point(x: 4.5, y: 5.0)
if somePoint.isToTheRight(x: 5) {
    print("This point is to the right of the line where x == 5")
}else {
    print("This point is to the left the line where x == 5")
} //with self swift refer to instance property that is also call x in this case

//modifying value types from within instance methods
struct Rectangle {
    var width = 1
    var height = 1
    func area() -> Int {
        return width*height
    }
    mutating func scaleBy(value: Int){
        width *= value
        height *= value
    }
}
var myRect = Rectangle(width: 10, height: 10)
myRect.scaleBy(value: 3)
print(myRect.height)
print(myRect.width)
print(myRect.area()) //muatating is using to change the value of func in to struct. u must using var to new instance.

//assigning to self within a muatating method
struct Point3 {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        self = Point3(x: x + deltaX, y: y + deltaY)
    }
}
var myPoint3 = Point3()
myPoint3.moveBy(x: 3.0, y: 4.5)
print(myPoint3.x, myPoint3.y)
myPoint3.moveBy(x: 5.5, y: 6.5)
print(myPoint3.x, myPoint3.y)

//type methods
class SomeClass {
    class func someTypeMethods() {
        
    }
}
SomeClass.someTypeMethods()

struct LevelTracker {
    static var highestUnlockedLevel = 1
    var currentLevel = 1
    static func unlock(_ level: Int) {
        if level > highestUnlockedLevel { highestUnlockedLevel = level }
    }
    static func isUnlocked(_ level: Int) -> Bool {
        return level <= highestUnlockedLevel
    }
    
    @discardableResult
    mutating func advanced(to level: Int) -> Bool {
        if LevelTracker.isUnlocked(level) {
            currentLevel = level
            return true
        }else {
            return false
        }
}
}
class Player {
    var tracker = LevelTracker()
    let playerName: String
    func complete(level: Int) {
        LevelTracker.unlock(level + 1)
        tracker.advanced(to: level + 1)
    }
    init(name: String) {
        playerName = name
    }
}
var player = Player(name: "Anhdt")
print(player.playerName)
player.complete(level: 1)
print("highest unlocked level is now \(LevelTracker.highestUnlockedLevel)")
player = Player(name: "Beto")
print(player.playerName)
if player.tracker.advanced(to: 6){
    print("player is now on lv6")
} else {
    print("lv6 has not yet been unlocked")
}

