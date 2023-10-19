
//Setting Initial Values for Stored Properties

struct iPadStruct{
  var model: String
  var color: String
  var storage: Int
}

// Structs are value type

let myIPhone = iPadStruct(model: "iPad9thGeb", color: "Gray", storage: 128)
var yourIPhone = myIPhone   // You copied my iPad info

// Use "var" instead of "let" in Struct if you want to make changes

yourIPhone.color = "Black"

print(yourIPhone.color)
print(myIPhone.color)

struct Animal{
    var name: String
    init(name:String){
        self.name = name
    }
}


var ox = Animal(name: "ox")
//new change
var cow = ox

print(ox.name)
print(cow.name)

//change the name again for ox

ox.name = "bull"
print(cow.name)
print(ox.name)

//struct with class

class CarFactory {
    var items = 8
}

struct CarStruct {
    let identifier: Int
    let name: String
    let inStock: Bool
    let factory = CarFactory()
}

// To pass reference of `carToy` into `withUnsafePointer` you need to change let into var
var carA = CarStruct(identifier: 1234,
                     name: "Remote car",
                     inStock: true)

withUnsafePointer(to: &carA) { print("Car A address \($0)") }

var productB = carA

withUnsafePointer(to: &productB) { print("Car B address \($0)") }

// Let's create empty struct
struct EmptyProduct {
}

var emptyProductStruct = EmptyProduct()

withUnsafePointer(to: &emptyProductStruct) { print("Empty product address \($0)") }

var emptyProductStructCopy = emptyProductStruct

withUnsafePointer(to: &emptyProductStructCopy) { print("Empty product copy address \($0)") }
