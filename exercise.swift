//EX1_return large number
func number (num1:Int, num2:Int) -> Int {
    if num1 > num2 {
       return num1
    } else {
      return num2
    }
}
let largNum = number(num1: 5, num2: 9)
print (largNum)

//EX2_ take firstname and lastname return fullname

func name (firstName: String, lastName: String) -> String {
    return firstName + " " + lastName
}
let fullName = name(firstName: "Heba",  lastName: "omar")
print(fullName)

//EX3_func take an array -> if it contins value / empty / nil
func printArray(array: [Int?]) -> Int? {
    if array.isEmpty {
        return 0
    } else if array != nil {
        return 1
    } else {
        return nil
    }
}
let number = printArray(array: [1, nil, 3])
print (number)

