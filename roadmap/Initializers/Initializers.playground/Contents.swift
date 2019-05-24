import UIKit

//basic init example
struct student{
    var gender: String
    var standing: String
    var GPA: Double
    
    init(gender: String, standing: String, GPA: Double){
        self.gender = gender
        self.standing = standing
        self.GPA = GPA
    }
}

let student1 = student(gender: "male", standing: "junior", GPA: 3.5)

print("gender: \(student1.gender)\nstanding: \(student1.standing)\nGPA: \(student1.GPA)")

//swift provides default initializers
class teacher{
    var name = "John Doe"
    var subject = "Computer Science"
}

let teacher1 = teacher()

print("\nname: \(teacher1.name)\nsubject: \(teacher1.subject)")
