class Solution {
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        var output: [Int] = []
        for item in left...right {
            var digits: [Int] = []
            let hasNoZeroes = !hasDigitZero(input: item, with: &digits)
            let isValid = isSelfDividing(input: item, with: digits)
            if hasNoZeroes, isValid {
                output.append(item)
            }
        }
        return output
    }
    
    func isSelfDividing(input: Int, with digits: [Int]) -> Bool {
        if digits.isEmpty {
            return false
        }
        for digit in digits {
            if input % digit != 0 {
                return false
            }
        }
        return true
    }
    
    func hasDigitZero(input: Int, with digits: inout [Int]) -> Bool {
        var temp = input
        while temp > 0 {
            let digit = temp % 10
            if digit == 0 {
                return true
            }
            digits.append(digit)
            temp = temp / 10
        }
        return false
    }
}
