/*
 * Answers for the exercise set 3
 * Jerry Mesimäki (jerry.mesimaki@cs.helsinki.fi)
 */

import Darwin

// ex. 1

func circleRadiusToArea(radius: Double) -> Double {
    return M_PI*pow(radius, 2)
}

circleRadiusToArea(5.00)

// ex. 2

func isDivisibleBy(number: Int, divisor: Int) -> Bool {
    return number % divisor == 0
}

isDivisibleBy(10, divisor: 2)
isDivisibleBy(9, divisor: 4)

// ex. 3

func sumNumbers(numbers: Int...) -> Int {
    return numbers.reduce(0, combine: +)
}

sumNumbers(1,2,3,4)
sumNumbers(1337)

// ex. 4

func reverseByReduce(acc: String, cur: Character) -> String {
    return String(cur) + acc
}

// funkshunal ekstenshuns!
extension String {
    var reverse: String {
        return self.characters.reduce("", combine: reverseByReduce)
    }
}

"foobar".reverse
"123".reverse
"neulo taas niin saat oluen".reverse

// ex. 5


// this side effect makes me feel dirty
func makeNil(inout input: String?) {
    input = nil
}

var asdf: String? = "foobar"
makeNil(&asdf)
print(asdf)
