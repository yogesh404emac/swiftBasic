//Enums examples

enum carBrands {
  case Tata
  case Mahindra
  case Toyota
  case Honda
}

let myCarBrands = carBrands.Tata
print("my favourite car brands \(myCarBrands)")

enum BikeBrands {
  case Bajaj, royalEnfield, TVS, Honda
}

let myBikeBrands = BikeBrands.royalEnfield
print("my favourite bike brands \(myBikeBrands)")

//Enums and switch

let myCar = carBrands.Toyota
switch myCar {
case .Tata :
  print("Tata is my  favourite car brands!")
case .Mahindra :
  print("Mahindra is my  favourite car brands")
case .Toyota :
  print("Toyota is my  favourite car brands")
case .Honda :
  print("Honda is my  favourite car brands")
}


//with for  CaseIterable
/*Types that conform to the CaseIterable protocol are typically enumerations without associated values. When using a CaseIterable type, you can access a collection of all of the type’s cases by using the type’s allCases property.*/

enum TruckBrands: CaseIterable {
    case TataMotors
    case BharatBenz
    case HindustanMotors
    case ForceMotors
}
print("Truck brands are ")
for TruckBrand in TruckBrands.allCases {
    print(TruckBrand)
}


//associated values

enum dreamCar {
  case name (String)
  case year(Int)
}
let carName = dreamCar.name("mustang")
let modelYear = dreamCar.year(1969)
print("My drean car is \(carName) \(modelYear)")

//raw values

enum countryCar:String {
   case Bharat = "ambassador"
   case Japan = "fj40"
   case Russia = "navida car"
   case USA = "willys"
}
let myCountryCar = countryCar.Bharat
print(myCountryCar.rawValue)

//Enums with methods: Enums can have methods which can be used on enum cases:
enum WeekDay :String {
case Monday
case Tuesday
func day() ->String { return self.rawValue }
}
print(WeekDay.Monday.day())


//Recursive Enumerations
indirect enum ArithmeticExpression {
  case number(Int)
  case addition(ArithmeticExpression, ArithmeticExpression)
  case multiplication(ArithmeticExpression, ArithmeticExpression)
}

let two = ArithmeticExpression.number(2)
let three = ArithmeticExpression.number(3)
let sum = ArithmeticExpression.addition(two, three)
print("Sum = \(sum)")
