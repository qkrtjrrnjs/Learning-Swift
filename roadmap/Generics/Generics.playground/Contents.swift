import UIKit

func addInt(_ A: Int, _ B: Int) -> Int{
    return A + B
}

func addDouble(_ A: Double, _ B: Double) -> Double{
    return A + B
}

print("\(addInt(10, 10))")
print("\(addDouble(10.0, 10.0))")

//using generics
func add<T: Numeric>(_ A: T, _ B: T) -> T{
    return A + B
}

print("\(add(10, 10))")
print("\(add(10.0, 10.0))")


