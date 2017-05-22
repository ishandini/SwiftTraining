//: Playground - noun: a place where people can play

import UIKit

var myStringArray: [String] = ["One", "Two", "Three"]
myStringArray.append("Four")
myStringArray.remove(at: 1)

var myIntArray = [1,2,3,4]

var newAnyArry:[Any] = [myStringArray, myIntArray]

print(myStringArray)
print(myIntArray)


newAnyArry[0]
newAnyArry[1]



var intArray = newAnyArry[0] as! [String]

if var newIntArray = newAnyArry[0] as? [String] {
    newIntArray.remove(at: 0)
    print(newIntArray)
}


class Student {

    var firstName = ""
    var age  = 0
    var dob: NSDate?
    var lastname = ""
    var fullName: String {
        return firstName + " " + lastname
    }
    
    var score: Int = 10 {
        willSet(myValue) {
             print("Score WILLSET:\(myValue)")
        }
        
        didSet {
            print("Score DIDSET:\(oldValue)")
        }
    }
    
    
    init(firstName: String, lastname: String, age: Int) {
    
        self.firstName = firstName
        self.lastname = lastname
        self.age = age
        self.dob = NSDate()
    }
}


var saman = Student(firstName: "Saman", lastname: "Perera", age: 20)
saman.firstName = "Gayan"
print(saman.firstName)
print(saman.dob)
print(saman.fullName)

saman.score = 40
saman.score = 90


struct Dog {
    var name = ""
    var age = 10
    var dob: Date?
    
}

var lazzy = Dog(name: "Lazzy", age: 3, dob: nil)
print(lazzy.name)















