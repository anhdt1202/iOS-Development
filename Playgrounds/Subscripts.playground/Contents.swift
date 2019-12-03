import UIKit

//Subscripts syntax
struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}
let threeTimesTable = TimesTable(multiplier: 3)
print("six time is three \(threeTimesTable[6])") //value of subscriot is get by [], now index = 6

//Subscript Usage
var numberOfLegs = ["dog": 4,"spider": 8,"ant": 6]
numberOfLegs["chicken"] = 2
print(numberOfLegs.values.contains(4))

//subscripts option
struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    func indexIsValid(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row * column) + column]
        }
        set {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            grid[(row * column) + column] = newValue
        }
    }
}
var matrix = Matrix(rows: 2, columns: 2)
print(matrix.grid)
matrix[0, 1] = 1.5
matrix[1, 0] = 3.2
print(matrix.grid)
//let someValue = matrix[2, 2] // outside

//Type subscripts
enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    static subscript(n: Int) -> Planet {
        return Planet(rawValue: n)!
    }
}
let mars = Planet[4]
print(mars)
