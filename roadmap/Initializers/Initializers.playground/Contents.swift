import UIKit

//basic init example
struct A{
    var gender: String
    var standing: String
    var GPA: Double
    
    init(gender: String, standing: String, GPA: Double){
        self.gender = gender
        self.standing = standing
        self.GPA = GPA
    }
}

let personA = A(gender: "male", standing: "junior", GPA: 3.5)

print("gender: \(personA.gender)\nstanding: \(personA.standing)\nGPA: \(personA.GPA)")

//swift provides default initializers
class B{
    var name = "John Doe"
    var subject = "Computer Science"
}

let personB = B()

print("\nname: \(personB.name)\nsubject: \(personB.subject)")

//initializer that takes no arguments
struct C{
    var salary: Int
    var age: Int
    
    init(){
        self.salary = 90000
        self.age = 50
    }
}

let personC = C()

print("\nsalary: $\(personC.salary)\nage: \(personC.age)")

//initializer parameters with no argument labels
struct D{
    var gender: String
    var age: Int
    
    init(_ gender: String, _ age: Int){
        self.gender = gender
        self.age = age
    }
}

let personD = D("female", 21)

print("\ngender: \(personD.gender)\nage: \(personD.age)")
