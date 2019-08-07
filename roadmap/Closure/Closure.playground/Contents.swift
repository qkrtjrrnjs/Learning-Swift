import UIKit

/*
 
 Closure: self-contained blocks of functionality that can be passed around and used in your code. Closures can capture and store references to any constants and variables from the context in which they are defined. This is known as closing over those constants and variables.
 
 */

//[1] function to multiply two numbers
func multiplyTwoNumbers(a: Int, b: Int) -> Int{
    return a * b
}

print("[1] \(multiplyTwoNumbers(a: 10, b: 10))")

//[2] using closures
let closure: (Int, Int) -> Int = { (a, b) in
    return a * b
}

print("[2] \(closure(10, 10))")

//[3]
let shortClosure: (Int, Int) -> Int = {
    return $0 * $1
}

print("[3] \(shortClosure(10, 10))")

//[4]
let shorterClosure: (Int, Int) -> Int = {$0 * $1}

print("[4] \(shorterClosure(10, 10))")

//[5] inferred type closures
let inferredClosure = {(a, b) -> Int in a * b }

print("[5] \(inferredClosure(10, 10))")

//[6] closure with no parameters
let noParamClosure = {() -> Int in 100}

print("[6] \(noParamClosure())")

//[7] Shorter closure with no parameters
let shortNoParamClosure = {100}

print("[7] \(shortNoParamClosure())")

//[8] returning closure from a function
let multiply: (Int, Int) -> Int = {$0 * $1}

func multiplyFunc () -> (Int, Int) -> Int{
    return multiply
}

print("[8] \(multiplyFunc()(10, 10))")

//[9]
var returnedMultiply = multiplyFunc()

print("[9] \(returnedMultiply(10, 10))")

//[10]

//func returnHundred() -> String{
//    return "100"
//}

var returnHundred = { return "100" }

func insert(_ closure: () -> String){
    print("[10] \(closure())")
}

insert(returnHundred)
insert({return "100"})

//[11] //trailing closures
func trailingClosure(closure: ()-> Void){
    closure()
}

trailingClosure(){
    print("[11] 100")
}


