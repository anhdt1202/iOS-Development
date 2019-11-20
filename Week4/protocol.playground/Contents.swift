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
