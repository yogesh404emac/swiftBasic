

//example 1

struct FullName {
    var firstName :String
    var lastName : String
    
    var fullName : String {
        return firstName + " " + lastName
    }
}

var fullName = FullName(firstName: "Pratap", lastName: "Patil")
print("Full name: \(fullName.fullName)")


//example 2

struct  kilogramsIntoPounds {
    var kilograms:Double
    
    var pounds: Double {
        return (kilograms * 2.2046 )
    }
}
var kilograms_to_pounds = kilogramsIntoPounds(kilograms: 7.4)
print("\(kilograms_to_pounds.kilograms) kilograms is  : \(kilograms_to_pounds.pounds) Pounds")

//example 3

struct calculateGST {
    var OriginalCost: Double
    var GSTRatePercentage: Double
    
    var GSTAmount: Double {
        return (OriginalCost * GSTRatePercentage) / 100
    }
    
    var NetPrice : Double {
        return OriginalCost + GSTAmount
    }
}

var gstAmount = calculateGST(OriginalCost: 10, GSTRatePercentage: 5)
print("Amount with GST  is : \(gstAmount.GSTAmount)")
print("Net Price : \(gstAmount.NetPrice)")


//example 4
struct CarAvailable {
    var name: String
    var isStock: Bool
    
    var carStatus: String {
        if isStock {
            return "\(name) car is an available stock"
        } else {
            return "\(name) car is not an available stock"
        }
    }
}

let chessBoxing = CarAvailable(name: "Sumo", isStock: false)
print(chessBoxing.carStatus)


/*
 Resources  :
 https://mahigarg.github.io/blogs/computed-property-in-swift/
 https://medium.com/@ranga.c222/getters-and-setters-in-swift-computed-properties-f2625ec6cbf7
 */
