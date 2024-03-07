// LV.4

// AbstractOperation 클래스
class AbstractOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Any {
        return 0
    }
}

// Calculator 클래스
class Calculator {
    var operation: AbstractOperation

    init(operation: AbstractOperation) {
        self.operation = operation
    }

    func calculate(firstNumber: Double, secondNumber: Double) -> Any {
        return operation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
    }
}

// Addition 클래스
class AddOperation: AbstractOperation {
    override func operate(firstNumber: Double, secondNumber: Double) -> Any {
        return firstNumber + secondNumber
    }
}

// Subtraction 클래스
class SubtractOperation: AbstractOperation {
    override func operate(firstNumber: Double, secondNumber: Double) -> Any {
        return firstNumber - secondNumber
    }
}

// Multiplication 클래스
class MultiplyOperation: AbstractOperation {
    override func operate(firstNumber: Double, secondNumber: Double) -> Any {
        return firstNumber * secondNumber
    }
}

// Division 클래스
class DivideOperation: AbstractOperation {
    override func operate(firstNumber: Double, secondNumber: Double) -> Any {
        if secondNumber == 0 {
            return "숫자없음"
        } else {
            return firstNumber / secondNumber
        }
    }
}


// Calculator 클래스의 인스턴스 생성
let calculator = Calculator(operation: DivideOperation())

// 계산 수행
let addResult = calculator.calculate(firstNumber: 10, secondNumber: 5)
let subtractResult = calculator.calculate(firstNumber: 10, secondNumber: 5)
let multiplyResult = calculator.calculate(firstNumber: 10, secondNumber: 5)
let divideResult = calculator.calculate(firstNumber: 10, secondNumber: 0)

print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")
