import UIKit

func TheBasics(){
    
// Constants and Variables
    
    //Constant Declaration * immutable *
    let hundredConst = 100

    //variable Declaration
    var hundredVar = 100
    var x = 1, y = 2, z = 3

    //type annotation
    var stringVar: String // --> declare variable called string of type String
    var a, b, c: Int // --> declare variables a, b, and c of type Int

    //supports string interpolation (evaluating string literals containing placeholders which replaces the placeholders with corresponding values
    print("\(hundredConst)세 시대")

// Typealias
    
    //typealias (defining alternative name for existing type) example
    typealias s = String
    var typealiasString: s

// Tuples
    
    //tuples
    let nameAndAge = (name: "James", age: 25)
    print("name: \(nameAndAge.name)\nage: \(nameAndAge.age)")

    //decompose tuples
    let (name, age) = nameAndAge
    print("name: \(name)\nage: \(age)")

// Optionals
    
    //use optionals when values may be absent (with optionals, either there is a value or there isn't a value)
    var year: String?

    func printYear(){
        if year != nil{
            print(year!)
        }
        else{
            print("nil")
        }
    }

    printYear()

    year = "2019"

    printYear()
    
// Optional Binding
    
    //use optional binding to find out whether an optional contains a value, and if so, to make that value available as a temporary constant or variable.
    //as opposed to forced unwrapping
    
    if let yearTemp = year{
        print(yearTemp)
    }else{
        print("nil")
    }
    
// implicitly unwrapped optionals
    
    let assumed: String! = "Hello World!"
    let implicit: String = assumed
    print(implicit)
    
// Error Handling
    enum errors: Error{
        case ERR1
        case ERR2
        case ERR3
    }
    
    func throwError() throws{
        if year != nil{
            throw errors.ERR2
        }
    }
    
    do{
        try throwError()
    }catch errors.ERR1{
        print("err1")
    }catch errors.ERR2{
        print("err2")
    }catch errors.ERR3{
        print("err3")
    }catch{
        print("unknown error")
    }
}

func BasicOperators(){
    
//Ternary Conditional Operator
    let isTall = true
    let height = isTall ? "6ft" : "5ft"
    print(height)
    
//Nil Coalescing Operator
    var nilVar: String?
    var nilCoalesce = nilVar ?? "Something"
    print(nilCoalesce)
    
//Closed range operator
    for i in 1...5{
        print(i)
    }

//Half closed range operator
    for i in 1..<5{
        print(i)
    }

//One sided range operator
    let names = ["James", "Chris", "Sam"]
    for name in names[...1]{
        print(name)
    }
    
}

func StringAndCharacters(){
    
//Multiline String literals
    let longString = """
    Hello World!
    Hello World!
    안녕!
    안녕!
    """
    print(longString)
    
//special characters unicode
    let sparklingHeart = "\u{1F496}"
    print(sparklingHeart)
    
//Initializing empty string
    let emptyString1 = ""
    let emptyString2 = String()
    
    if emptyString1.isEmpty && emptyString2.isEmpty{
        print("is empty")
    }
    
//Working with characters
    for character in "Hello World!"{
        print(character)
    }
    
    let character: [Character] = ["H", "E", "L", "L", "O"]
    print(String(character))
    
//Concatenating Strings and characters
    let string1 = "Computer"
    let string2 = "Science"
    let concat1 = string1 + string2
    print(concat1)
    
    var concat2 = "Computer"
    concat2 += string2
    
    let exclamation: Character = "!"
    concat2.append(exclamation)
    
    print(concat2)
    
//Counting characters
    print(string1.count)
    
//Accessing and modifying String
    var greeting = "Hello World!"
    print(greeting[greeting.startIndex])
    
    print(greeting[greeting.index(before: greeting.endIndex)])
    
    print(greeting[greeting.index(after: greeting.startIndex)])
    
    let index = greeting.index(greeting.startIndex, offsetBy: 4)
    print(greeting[index])
    
    greeting.insert("!", at: greeting.endIndex)
    print(greeting)
    
    greeting.remove(at: greeting.index(before: greeting.endIndex))
    print(greeting)
    
//Substring
    let helloWorld = "Hello World"
    let i = helloWorld.firstIndex(of: " ") ?? helloWorld.endIndex
    let newString = helloWorld[..<i]
    
    print(newString)
}

func collectionTypes(){
//Empty Array
    var _ = [Int]()

//array with default values
    var _ = Array(repeating: 10, count: 5)

//creating dictionaries (Dictionary<Key, Value>)
    var _ = [Int: String]()
}

func controlFlow(){
//for loop
    for i in 1...5{
        print(i)
    }
    
//while loop
    var x = 0
    while x < 5{
        x+=1
    }
    
//repeat-while (basically a do while loop)
    repeat{
        x+=1
    } while x < 10
    
//switch statement
    let y = 5
    switch y{
    case 1:
        print(1)
    case 2:
        print(2)
    case 3:
        print(3)
    default:
        print("something else")
    }
    
//break, continue, fallthrough available
}

//ARC (Automatic reference counting)
//Swift uses Automatic Reference Counting (ARC) to track and manage your app’s memory usage.


TheBasics()
BasicOperators()
StringAndCharacters()
collectionTypes()
controlFlow()
