//LV2

class Calculator {
    func add(firstNumber: Double, secondNumber: Double ) -> Double {
        return firstNumber + secondNumber
    }
    func subtract(firstNumber: Double, secondNumber: Double ) -> Double {
        return firstNumber - secondNumber
    }
    func multiply(firstNumber: Double, secondNumber: Double ) -> Double {
        return firstNumber * secondNumber
    }
    func divide(firstNumber: Double, secondNumber: Double ) -> Any {
        if secondNumber == 0 {
            return "숫자없음"
        } else {
            return firstNumber / secondNumber
        }
    }
    // %는 Int형만 가능
    func remain1(firstNumber: Int, secondNumber: Int ) -> Int {
        return firstNumber % secondNumber
    }
}

// Double 혹은 Float 일때
var a = 10.0
var remain2 = a.truncatingRemainder(dividingBy: 3.0)


let calculator = Calculator()
let addResult = calculator.add(firstNumber: 10, secondNumber: 5)
let subtractResult = calculator.subtract(firstNumber: 10, secondNumber: 5)
let multiplyResult = calculator.multiply(firstNumber: 10, secondNumber: 5)
let divideResult = calculator.divide(firstNumber: 10, secondNumber: 0)
let remainderResult1 = calculator.remain1(firstNumber: 10, secondNumber: 5)
let remainderResult2 = remain2

print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")
print("remainderResult : \(remainderResult1)")
print("remainderResult : \(remainderResult2)")
