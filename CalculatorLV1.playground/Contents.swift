//LV1

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
}

let calculator = Calculator()
let addResult = calculator.add(firstNumber: 10, secondNumber: 5)
let subtractResult = calculator.subtract(firstNumber: 10, secondNumber: 5)
let multiplyResult = calculator.multiply(firstNumber: 10, secondNumber: 5)
let divideResult = calculator.divide(firstNumber: 10, secondNumber: 0)

print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")
