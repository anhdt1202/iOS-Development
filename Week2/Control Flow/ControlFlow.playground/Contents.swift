import UIKit

//For-In Loops
//for-in loops in array
let names = ["Dung", "Ty", "Tung", "Tuan Anh"]
for name in names {
    print(name)
}
//for-in loops in dictionary
let licensePlates = ["Ha Noi" : 29, "Hai Duong" : 34, "Nghe An" : 37, "Vinh Phuc" : 88]
for(provinceName, licenseCode) in licensePlates {
    print("\(provinceName) province has lincensePlates is \(licenseCode)")
}
//for-in loops with numeric ranges
for index in 1...3{
    print("\(index) times 3 is \(index*3)")
}
//example 2 for-in loops with numeric
let base = 3
let power = 4
var answer = 1
for _ in 1...power {
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")
/* begin : base =3,power=4,answer=1.
    loops : after loop 1 : answer = 3,base =3,power =1
            after loop 2 : answer = 3x3 , base =3,power =2
            after loop 3 : answer = 3x3x3, base =3,power =3
            after loop 4 : answer = 3x3x3x3, base =3,power =4.
end*/

//example 3 for-in loops using stride(from: ,to: ,by:) and stride(from: ,through: ,by:)
let minutes = 60
let minuteInterval = 8
for tickMark in 0..<minutes{
    //use print(tickMark) the resulit is 0,1,2,3...59.
}
for tickMark in stride(from: 0, to: minutes, by: minuteInterval){
    print(tickMark) // result 0, 0+8 , 0+8+8 ,.... <60
}
for tickMark in stride(from: 0, through: minutes, by: minuteInterval)
{
    print(tickMark) // result 0, 0+8 , 0+8+8 , ... =<60
}

//While loop : whie condition { statements }

let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
var square = 0
var diceRoll = 0
while square < finalSquare {
    //roll the dice
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    //move by the rooled amount
    square += diceRoll
    if square < board.count {
        square += board[square]
    }
}
print("Game over")
/*step 1 : diceRoll = 1;square =1 < board.count
  step 2 : diceRoll = 2;square =1+2 => board = 03+08 => square =11 < board.count
  step 3 : diceRoll = 3;square =11+03 => board =14-10 => square =04 < board.count
  step 4 : diceRoll = 4;square =04+04 = 08 < board.count
  .
  .
  step last : dice = ; square =  > board.count
  end = Game over
 */

//Repeat-while
let finalSquare2 = 25
var board2 = [Int](repeating: 0, count: finalSquare + 1)
board2[03] = +08; board2[06] = +11; board2[09] = +09; board2[10] = +02
board2[14] = -10; board2[19] = -11; board2[22] = -02; board2[24] = -08
var square2 = 0
var diceRoll2 = 0
repeat{
    square2 += board2[square2]
    diceRoll2 += 1
    if diceRoll2 == 7 { diceRoll2 = 1 }
    square2 += diceRoll2
}while square2 < finalSquare2
print("over")

//Conditional Statements
// IF
var age = 41
if age >= 55 {
    print("This person is over working age")
}else if age <= 55 && age >= 40 {
    print("This person can be premature retirement")
}else{
    print("This person is on working age")
}

//switch
let grade: Int = 0
switch grade {
case  1...5:
    print("Primary school")
case  6...9:
    print("Junior high school")
case  10...12:
    print("High school")
default:
    print("No learning")
}

