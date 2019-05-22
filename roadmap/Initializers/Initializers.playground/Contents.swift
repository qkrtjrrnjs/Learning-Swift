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

