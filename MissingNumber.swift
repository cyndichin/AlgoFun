class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let sum = Double(nums.reduce(0, +))
        let total = (Double(nums.count) / 2.0) * Double(nums.count + 1) 
        return Int(total - sum)
    }
}
