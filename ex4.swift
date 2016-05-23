/*
 * Answers for the exercise set 4
 * Jerry Mesimäki (jerry.mesimaki@cs.helsinki.fi)
 */


// ex. 1
class Cat {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func meow() -> String {
        return "Meow"
    }

}

let johnDoe: Cat = Cat(name: "John Doe", age: 10)
print(johnDoe.meow())

// ex. 2
class Item {
    var name: String
    var weight: Double

    init(name: String, weight: Double) {
        self.name = name
        self.weight = weight
    }

    func getName() -> String {
        return self.name
    }

    func getWeight() -> Double {
        return self.weight
    }
}

// ex. 3
class Box {
    var items: [Item]
    var size: Int = 0

    init() {
        self.items = [Item]()
    }

    func addItem(item: Item) {
        self.items.append(item)
        self.size += 1
    }

    // Returns the total weight of the items in the box
    func getWeight() -> Double {
        return self.items.reduce(0.00, combine: {$0 + $1.weight })
    }
}

let bananaForScale = Item(name: "Webscale Banana", weight: 0.2)
let aGoodBook = Item(name: "The Fountainhead", weight: 0.6)

let justABox = Box()
justABox.addItem(bananaForScale)
justABox.addItem(aGoodBook)

justABox.getWeight()
justABox.size

// ex. 4
class Notebook {
    var notes: [String]

    init() {
        self.notes = [String]()
    }

    func addNote(note: String) {
        self.notes.append(note)
    }

    func viewNotes() {
        self.notes.forEach { (let note: String) -> () in
            print(note)
        }
    }
}

let nb = Notebook()
nb.addNote("Read linear algebra")
nb.addNote("Do something that matters every day")
nb.addNote("Wake up and go to bed with beautiful thoughts")

nb.viewNotes()

// ex. 5
struct Currency {
    var type: String
    var value: Double

    // approx. vals @ 23.5.2016
    var conversions: [String: Double] = [
        "dollar": 1.12,
        "pound": 0.77
    ]

    init(type: String, value: Double) {
        self.value = value
        self.type = type
    }

    func getEuros() -> Double {
        switch self.type {
            case "dollar":
                return self.value / conversions["dollar"]!

            case "pound":
                return self.value / conversions["pound"]!

            default:
                return self.value
        }
    }

    func getDollars() -> Double {
        switch self.type {
            case "euro":
                return self.value * conversions["dollar"]!

            case "pound":
                return self.value / conversions["pound"]! * conversions["dollar"]!

            default:
                return self.value
        }
    }

    func getPounds() -> Double {
        switch self.type {
            case "euro":
                return self.value * conversions["pound"]!

            case "dollar":
                return self.value / conversions["dollar"]! * conversions["pound"]!

            default:
                return self.value
            }
    }

}

let someEuros = Currency(type: "euro", value: 15.50)
let someDollars = Currency(type: "dollar", value: 27.70)
let somePounds = Currency(type: "pound", value: 14.20)

// Float calculations, do not trust in this stuff, author was too lazy to use integers
someEuros.getDollars()
someEuros.getPounds()

someDollars.getEuros()
someDollars.getPounds()

somePounds.getEuros()
somePounds.getDollars()
somePounds.getPounds()
