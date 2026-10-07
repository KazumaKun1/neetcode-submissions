class Solution {
    func isPalindrome(_ s: String) -> Bool {
        if s.count <= 1 {
            return true
        }
        
        let text = s.filter { $0.isNumber || $0.isLetter }.uppercased()
        var left = 0
        var right = text.count - 1
        while left < right {
            let negativeOffset = (text.count - right) * -1
            let leftIndex = text.index(text.startIndex, offsetBy: left)
            let rightIndex = text.index(text.endIndex, offsetBy: negativeOffset)
            let leftCharacter = text[leftIndex]
            let rightCharacter = text[rightIndex]
            if leftCharacter != rightCharacter {
                return false
            }
            
            left += 1
            right -= 1
        }
        
        return true
    }
}
