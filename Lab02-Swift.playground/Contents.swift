import UIKit

// Adding three dollar values
let currency: [Double] = [43.88, 108.99, 14.22]
print("$", currency.reduce(0, {x, y in x + y}))

// Creating boolean value to represent negative value
let isNegative: Bool = true
print(isNegative ? "It is less than 0" : "It is not a negative")

// Or is this what you wanted?
let aNumber: Int = -2
print(aNumber < 0 ? "It is less than 0" : "It is not a negative")

// Array with String vals, loop to print
let langArray: [String] = ["Swift", "Objective-C", "HTML", "CSS", "JavaScript"]
// Short way
langArray.forEach { lang in print(lang) }
// Long way
for lang in langArray { print(lang) }

// An optional value is a variable that can have a value or no value at all

// In Swift, nil is null or the absence of a value

// Optionals
var reading1: Float?, reading2: Float?, reading3: Float?

// Conditional to check for nil in all three readings
if let r1 = reading1,
 let r2 = reading2,
 let r3 = reading3 {
 let avgReading = (r1 + r2 + r3) / 3
 print(avgReading)
}
// Safeguard to catch nil value in one of the three readings
else {
 let errorString = "Instrument reported a reading that was nil."
 print(errorString)
}

// Range
(1...5).forEach { num in print(num) }

// Enumerated
for (i, n) in (5...10).enumerated() {
    print(n)
}

// Combining full name
let firstName: String = "John", lastName: String = "Dutton", stringOne: String = " is mastering ", stringTwo: String = "the Swift Programming language"
let stringSum: String = "\(firstName) \(lastName)\(stringOne)\(stringTwo)"
print("The total is", stringSum)

// Multiply function
func multiply(numOne: Int, numTwo: Int) -> Int {
    return numOne * numTwo
}
print(multiply(numOne: 6, numTwo: 13))
