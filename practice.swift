//guard steps -> if the case failure return (inside guard let)
func sum (num1:Int? = nil , num2:Int? = nil) -> Int{
    // if num = num return nothing here
    // if num = nil -> return 0
    guard let num1 else {return 0}
    // if num = num return nothing here
    // if num = nil -> return 2
    guard let num2 else {return 2}
    // if num1 = num
    // if num2 = num
    return num1 + num2
    
}
let number = sum(num1: 5 , num2: 5)
print(number)
//on the contrary, the case is successful, then return (inside the 'if let' block).
func sum (num1:Int? = nil , num2:Int? = nil) -> Int{
if let num1 , let num2 {
          return num1 + num2
        }
        return 0
    }
let number = sum(num1: 5 , num2: 5)
print(number)

//loop
 //session 4
 let names = ["heba","loes", "andre"]
for names in names {
    print ("hello my family \(names)")
}
for fullName in "heba omar"{
    print("my letter in my full name is \(fullName)")
}

//half open range operator
let animals = ["lion","cat","dog"]
for animal in 0..<animals.count{
    print ("\(animal) my fav animals is \(animals[animal]) ")
}
//loop through dictionary
let student: [String : Any] = ["name":"heba", "age":25, "grade": 6]
for (key,value) in student {
    print(" \(key) is \(value)")
}

//session5
//type value (numeration) _ enums (keyword)
enum Status {
    case pending
    case processing
    case done
}

class Order {
    var id: String
    var model: Int
    var status: Status = .pending
    
    init(id: String, model: Int , status: Status){
        self.id = id
        self.model = model
    }
}
let newOrder = Order(id: "tesla", model: 2003, status: .pending)
print (newOrder.status)


//computed proberties_used get 
class Myname {
    var firstName: String = "Heba"
    var lastName: String = "Omar"
    
    //computed Proberties
    var fullName: String {
        get {
            return " my full name is \(firstName) \(lastName)"
        }
    }
}
let new = Myname()
print (new.fullName)

//computed property_used set
class Myname {
    var firstName: String = "Heba"
    var lastName: String = "Omar"
    
    //computed property
    var fullName: String {
        get {
            return " my full name is \(firstName) \(lastName)"
        }
        
        //use sit _this code will implement when i made new name
        set(newfULLname) {
            let names: [String] = newfULLname.components(separatedBy: " ")
            //if i need two name i can make if condition
            if names.count >= 2 {
                firstName = names[0]
                lastName = names [1]
            }
        }
    }
}
let new = Myname()
print (new.fullName)
new.fullName = "Max Verstappen"
print(new.fullName)



//willSet _ didSet 
class Myname {
    var firstName: String = "Heba"{
        willSet(newFirst){
            print("my new firstname is \(newFirst)")
        } didSet (oldFirstname) {
            print("my old firstname is \(oldFirstname)")
        }
       
    }
    var lastName: String = "Omar"
    var fullname: String {
        get {
            return "\(firstName) \(lastName)"
        }
    }
    
}
let new = Myname()
new.firstName = "hbhb"
//print(new.firstName)


//another example about did / will

class Student {
    var firstName: String = "Heba"{
        willSet(newFirstname){
            print("first student will be \(newFirstname)")
        } didSet (oldFirstname) {
            print("old student was \(oldFirstname)")
        }
        
    }
}
    
let new = Student()
new.firstName = "heldin"

//protocol as a contract class give it some order and it must return it 
enum Food {
    case fish
    case sandwish
}

protocol Mammal {
    func eat() -> Food
}
struct Oraka: Mammal {
    func eat() -> Food {
        return .fish
    }
}
class Human: Mammal {
    func eat() -> Food {
        return .sandwish
    }
}

let peter = Human()
print(
    peter.eat()
)
let myOrka = Oraka()
print (
    myOrka.eat()
)


//Genric _ accept any data
//T means (anyType)
func whatTypeIsIt<T> (input: T) ->String {
    print("the typ is : \(type(of: input))")
    return "ok"
}
whatTypeIsIt(input: "Text")
whatTypeIsIt(input: [1,2,3])
whatTypeIsIt(input: 12.0)

//Tubles use it when we want store several value in one variable
var car1 = (color: "red", Model: 555 , Year:2022)
// access it by two way (car1.0) , (car1.1) and so on.. oder( car1.color or car1.Model)

print(car1.Model)
print(car1.1)
print (car1.Year)
print(car1.2)


//mutating
// we use it to change value in struct

struct Point {
    var x: Int , y:Int
    
   mutating func updateValue (x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}
var point = Point(x: 10, y: 20)
print(point)

//here we want to change
point.x = 20
print(point)

//how to make Radus in app 
    override func viewDidLoad() {
        super.viewDidLoad()
        cornerRadus()
    }
    private func cornerRadus() {
        creatAccountButton .layer.cornerRadius = 25
    }
    
    
}


//how to make extension
//make newgroup
//new Swift file named UIView+extenstion

import UIKit
extension UIView {
    //for radius 
    func cornerRadus(_ radius: CGFloat) {
       self.layer.cornerRadius = radius
    }
    
}



//to make screen close :

 @IBAction func actionClose(_ sender: Any) {
   dismiss(animated: true)
