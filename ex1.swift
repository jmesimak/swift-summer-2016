/*
 * Answers for the exercise set 1
 * Jerry Mesimäki (jerry.mesimaki@cs.helsinki.fi)
 */

// 1.
print("Hello World!")

// 2.
var Taylor: String = "Swift"
print(Taylor)

// 3.
var a: Int = 1300
var b: Int = 37
print("\(a+b)")

// 4.
var age: Int = 18

if (age >= 18) {
    print("You seem like an adult")
} else {
    print("You don't seem like an adult")
}

// 5.
var lunch: String = "burger"

switch lunch {
    case ("pizza"):
        print("Woah! Amazing!")
    
    case ("burger"):
        print("So tasty! Yummy!")
    
    default:
        print("I'm not feeling hungry anymore.")
}