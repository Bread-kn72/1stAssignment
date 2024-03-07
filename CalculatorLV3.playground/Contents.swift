// LV.3

class Calculator {
    func calculate(operatorSymbol: String, firstNumber: Double, secondNumber: Double) -> Any? {
        switch operatorSymbol {
            case "+" :
            return AddOperation().add(operatorSymbol: operatorSymbol, firstNumber: firstNumber, secondNumber: secondNumber)
        case "-" :
        return SubstractOperation().subtract(operatorSymbol: operatorSymbol, firstNumber: firstNumber, secondNumber: secondNumber)
        case "*" :
        return MultiplyOperation().multiply(operatorSymbol: operatorSymbol, firstNumber: firstNumber, secondNumber: secondNumber)
        case "/" :
        return DivideOperation().divide(operatorSymbol: operatorSymbol, firstNumber: firstNumber, secondNumber: secondNumber)
        default:
            return nil
        }
    }
}

// 사칙연산별 클래스 생성
class AddOperation {
    func add(operatorSymbol: String, firstNumber: Double, secondNumber: Double ) -> Double {
        return firstNumber + secondNumber
    }
}
class SubstractOperation {
    func subtract(operatorSymbol: String, firstNumber: Double, secondNumber: Double ) -> Double {
        return firstNumber - secondNumber
    }
}
class MultiplyOperation {
    func multiply(operatorSymbol: String, firstNumber: Double, secondNumber: Double ) -> Double {
        return firstNumber * secondNumber
    }
}
class DivideOperation {
    func divide(operatorSymbol: String, firstNumber: Double, secondNumber: Double ) -> Any {
        if secondNumber == 0 {
            return "숫자없음"
        } else {
            return firstNumber / secondNumber
        }
    }
}

let calculator = Calculator()
let addResult = calculator.calculate(operatorSymbol: "+", firstNumber: 10, secondNumber: 5)
let subtractResult = calculator.calculate(operatorSymbol: "-", firstNumber: 10, secondNumber: 5)
let multiplyResult = calculator.calculate(operatorSymbol: "*", firstNumber: 10, secondNumber: 5)
let divideResult = calculator.calculate(operatorSymbol: "/", firstNumber: 10, secondNumber: 0)

print("addResult : \(addResult!)")
print("subtractResult : \(subtractResult!)")
print("multiplyResult : \(multiplyResult!)")
print("divideResult : \(divideResult!)")
