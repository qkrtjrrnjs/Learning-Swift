import UIKit

/*
 
 Closure: self-contained blocks of functionality that can be passed around and used in your code. Closures can capture and store references to any constants and variables from the context in which they are defined. This is known as closing over those constants and variables.
 
 */

//[1] function to multiply two numbers
func multiplyTwoNumbers(a: Int, b: Int) -> Int{
    return a * b
}

//[2] using closures
let closure: (Int, Int) -> Int = { (a, b) in
    return a * b
}

//[3]
let shortClosure: (Int, Int) -> Int = {
    return $0 * $1
}

//[4]
let shorterClosure: (Int, Int) -> Int = {$0 * $1}

//[5] inferred type closures
let inferredClosure = {(a, b) -> Int in a * b }

//[6] closure with no parameters
let noParamClosure = {() -> Int in 100}

//[7] Shorter closure with no parameters
let shortNoParamClosure = {100}

//[8] returning closure from a function
let multiply: (Int, Int) -> Int = {$0 * $1}

func multiplyFunc () -> (Int, Int) -> Int{
    return multiply
}

//[9]
var returnedMultiply = multiplyFunc()

//[10]
func returnHundred() -> String{
    return "100"
}

func insert(_ closure: () -> String){
    print("[10] \(closure())")
}


print("[1] \(multiplyTwoNumbers(a: 10, b: 10))")
print("[2] \(closure(10, 10))")
print("[3] \(shortClosure(10, 10))")
print("[4] \(shorterClosure(10, 10))")
print("[5] \(inferredClosure(10, 10))")
print("[6] \(noParamClosure())")
print("[7] \(shortNoParamClosure())")
print("[8] \(multiplyFunc()(10, 10))")
print("[9] \(returnedMultiply(10, 10))")
insert(returnHundred)
