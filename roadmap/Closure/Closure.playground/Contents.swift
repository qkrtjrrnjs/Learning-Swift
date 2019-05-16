import UIKit

/*
 
 Closure: self-contained blocks of functionality that can be passed around and used in your code. Closures can capture and store references to any constants and variables from the context in which they are defined. This is known as closing over those constants and variables.
 
 */

//function to multiply two numbers
func multiplyTwoNumbers(a: Int, b: Int) -> Int{
    return a * b
}

//using closure
let closure = { (a, b) -> Int in
    return a * b
}

//using shorthand closure

let shortClosure: (Int, Int) -> Int = {
    return $0 * $1
}

let shorterClosure: (Int, Int) -> Int = {$0 * $1}

print(multiplyTwoNumbers(a: 10, b: 10))
print(closure(10, 10))
print(shortClosure(10, 10))
print(shorterClosure(10, 10))
