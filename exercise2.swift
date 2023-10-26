/* Singular or plural?
Write a function that accepts a string as an input. If the string ends in “s,” then the string should return TRUE to indicate that the word is plural. Otherwise, it should return FALSE.
*/
func whatTypeIsiT(input:String) -> Bool {
    input.hasSuffix("s")    
}
print (whatTypeIsiT(input: "apples"))

//2
/*Convert Age to Days
Write a function that takes the age in years and returns the age in days. For example calculateAgeDays(20) -> 7300
*/

func calculateAgeDays (age: Int) -> Int {
  let daysInYear = 365
    return age * daysInYear
}
print (calculateAgeDays(age: 26))


//4. Reverse a string
//reversed()
//Write a function that takes an input string and reverses its order. For example, “Hello!” should return “!olleh”.
func reverse (x: String) -> String {
 return String(x.reversed())
}
print(reverse(x: "Hello"))

//5 
/* Is there a higher number?
Write a function that takes an array and number, n, and returns TRUE if a number in the array is greater than n. For example, for an array [24, 32, 42, 34] and n = 50, the output should be FALSE.
*/

func  isthereahighernumber (x: [Int] , n: Int ) -> Bool {
    for element in x {
         if n > element {
             return true
         }
     }
     return false
 }


let new = isthereahighernumber(x:  [24, 32, 42, 34], n: 50)
print (new)

/*6. Basic calculator
Write a class that contains functions to do summation, submission, multiply, and divide for 2 numbers.
*/
class Calc {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    func sum (x: Int , y: Int )-> Int{
        return x+y
    }
    func sub (x: Int , y: Int )->Int{
        return x-y
    }
    func div (x: Int , y: Int )->Int{
        return x/y
    }
}
let basicCalc = Calc(x: 4 , y: 8)

print(basicCalc.sum(x: 4 , y: 8))
print(basicCalc.sub(x: 4 , y: 8))
print(basicCalc.div(x: 4 , y: 8))


//Ques 7
//Write a class that extends from another class and change implementation for his super function, for example parent class has function to print “Main” and sub class has the same function but print “Sub”.

class parent {
    func letMeGo (){
        print ("main")
    }
    
}
class child: parent {
    override func letMeGo() {
        print("sub")
    }
}

let a = child()
let b: parent = child()
a.letMeGo()
b.letMeGo()

