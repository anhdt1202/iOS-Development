import UIKit

var str = "Hello, playground"
//String literals
let something = "Some string literal value"

//multiple String literals
let multipleString = """
This is the line 1 in multiple string
This is the line 2 in multiple string
Bye bye
"""

//using (\) to break line in code
let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""
print(softWrappedQuotation) //result is not contains the (\) character.

//line Breaks in string
let lineBreaks = """

This string starts with a line break.
It also ends with a line break.

"""
print(lineBreaks)

//special character
let randomIcon = "\u{1F496}"
print(randomIcon)

//empty string
var emptyString = ""
if emptyString.isEmpty {
 print("The string is empty")
}

//String mutability
var variableString = "Horse"
variableString += " and carriage"
print(variableString)

//Working with Characters
for character in "Dog!" {
    print(character)
}
let catCharacters: [Character] = ["C", "a", "t", "!"]
let catString = String(catCharacters)
print(catString)

//Concatenating Strings and Characters
let string1 = "Hello"
let string2 = " there"
var welcome = string1 + string2
print(welcome) //adding string the result : Hello there
var instruction = "look over"
instruction += string2
print(instruction) // the result look over there
let exclamationMark: Character = "?"
instruction.append(exclamationMark) //append a Character value to a String
print(instruction) // the result look over there?
let start = """
one
two

""" //using a line break in last line to break line with adding string.
let end = "three"
print(start+end)

//String Interpolation
let multiplier = 3
let message = "\(multiplier) time 2.5 is \(Double(multiplier) * 2.5)" //using a \ before a object.
print(message)

//extended grapheme cluster
let combinedEAcute: Character = "\u{65}\u{301}" //result = é

//Counting Character
let stringToCounting = "Koala 1, Snail 2, Penguin 3, Dromedary 4"
print("The string has \(stringToCounting.count) characters")

//String indices
let testStringIndices = "AnhDT dz!"
testStringIndices[testStringIndices.startIndex] //A
testStringIndices[testStringIndices.index(after: testStringIndices.startIndex)]
testStringIndices[testStringIndices.index(before: testStringIndices.endIndex)]
let index = testStringIndices.index(testStringIndices.startIndex, offsetBy: 4)
 testStringIndices[index]

//Insert and Removing
var testIRString = "1977"
testIRString.insert("?", at: testIRString.endIndex)
testIRString.insert(contentsOf: "vlog", at: testIRString.index(before: testIRString.endIndex))
testIRString.remove(at: testIRString.index(testIRString.startIndex, offsetBy: 4))
print(testIRString)
let range = testIRString.index(testIRString.endIndex, offsetBy: -7)..<testIRString.endIndex
testIRString.removeSubrange(range)
print(testIRString)

//Substrings
let testSubStrings = "Testing, substring"
let index1 = testSubStrings.firstIndex(of: ",") ?? testSubStrings.endIndex
let begin = testSubStrings[..<index1]
let newString = String(begin)
print(newString)

//String and Character Equality
let string3 = "Equal or not"
let string4 = "Equal or not"
if string3 == string4{
    print("These two string are equal")
}

let latinCapitalLetterA: Character = "\u{41}"
let cyrillicCapitalLetterA: Character = "\u{0410}"
if latinCapitalLetterA != cyrillicCapitalLetterA {
    print("These two characters are not equaivalent.")
}

//Prefix and Suffix
let romeoAndJuliet = [
"Act 1 Scene 1: Verona, A public place",
"Act 1 Scene 2: Capulet's mansion",
"Act 1 Scene 3: A room in Capulet's mansion",
"Act 1 Scene 4: A street outside Capulet's mansion",
"Act 1 Scene 5: The Great Hall in Capulet's mansion",
"Act 2 Scene 1: Outside Capulet's mansion",
"Act 2 Scene 2: Capulet's orchard",
"Act 2 Scene 3: Outside Friar Lawrence's cell",
"Act 2 Scene 4: A street in Verona",
"Act 2 Scene 5: Capulet's mansion",
"Act 2 Scene 6: Friar Lawrence's cell"
]
var act1SceneCount = 0
var masionCount = 0
var cellCount = 0
for scene in romeoAndJuliet{
    if scene.hasPrefix("Act 1 "){
        act1SceneCount += 1
    }
    if scene.hasSuffix("Capulet's mansion"){
        masionCount += 1
    }
    if scene.hasSuffix("cell"){
        cellCount += 1
    }
}
print("There are \(act1SceneCount) scenes in Act 1")
print("There are \(masionCount) masions scenes and \(cellCount) cell scenes" )
