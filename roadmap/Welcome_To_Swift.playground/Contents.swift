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

TheBasics()


