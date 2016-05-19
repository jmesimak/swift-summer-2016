/*
 * Answers for the exercise set 2
 * Jerry Mesimäki (jerry.mesimaki@cs.helsinki.fi)
 */

import Darwin

// ex. 1

var nilValue: String? = nil

switch nilValue {
    case nil:
        print("Value not set")
    case let x:
        print(x)
}

// ex. 2

for nr: Int in 1...20 {
    if (nr % 3 == 0 && nr % 5 == 0) {
        print("fizzbuzz")
    } else if (nr % 3 == 0) {
        print("fizz")
    } else if (nr % 5 == 0) {
        print("buzz")
    }
}

// ex. 3

var numbers = [Int]()

// Init list
for nr: Int in 1...5 {
    numbers.append(Int(arc4random_uniform(6) + 1))
}

// sum
let sum: Int = numbers.reduce(0, combine: +)
print(sum)

// length
let length = numbers.count
print(length)

// avg
let avg = Double(sum) / Double(length)
print(avg)

// ex. 4

var animalNames = [String: String]()
animalNames["Fox"] = "Vulpes vulpes"
animalNames["Dog"] = "Canis lupus"
animalNames["Eagle"] = "Aquila pennata"
animalNames["Bear"] = "Ursus arctos"

for (animal, latinName) in animalNames {
    print("\(animal): \(latinName)")
}

// ex. 5

var moarNumbas = [Int: Int]()

for nr: Int in 1...8 {
    moarNumbas[nr] = Int(arc4random_uniform(6) + 1)
}

var evens = 0
var odds = 0
for (key, value) in moarNumbas {
    if (key % 2 == 0) {
        evens += value
    } else {
        odds += value
    }
}

print(evens)
print(odds)