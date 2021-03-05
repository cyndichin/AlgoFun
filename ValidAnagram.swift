class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var charCount = [Character: Int]()
        guard s.count == t.count else { return false }
        for item in s {
            if let key = charCount[item] {
                charCount[item] = key + 1
            } else {
                charCount[item] = 1
            }
        }
        
        for item in t {
            if let key = charCount[item], key > 0 {
                charCount[item] = key - 1
            } else {
                return false
            }
        }
        return true
    }
}
