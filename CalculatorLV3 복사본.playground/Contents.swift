//LV.3-1


class Calculator {
    var firstNumber: Double
    var secondNumber: Double
    
    init(firstNumber: Double, secondNumber: Double) {
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    }
}

// 사칙연산별 클래스 생성
class AddOperation: Calculator {
    func operate() -> Double {
        return firstNumber + secondNumber
    }
}
class SubtractOperation: Calculator {
    func operate() -> Double {
        return firstNumber - secondNumber
    }
}
class MultiplyOperation: Calculator {
    func operate() -> Double {
        return firstNumber * secondNumber
    }
}
class DivideOperation: Calculator {
    func operate() -> Any {
        if secondNumber == 0 {
            return "숫자없음"
        } else {
            return firstNumber / secondNumber
        }
    }
}


// 계산 인스턴스 생성
let addResult = AddOperation(firstNumber: 10, secondNumber: 5).operate()
let subtractResult = SubtractOperation(firstNumber: 10, secondNumber: 5).operate()
let multiplyResult = MultiplyOperation(firstNumber: 10, secondNumber: 5).operate()
let divideResult = DivideOperation(firstNumber: 10, secondNumber: 0).operate()

// 결과 Print
print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")
