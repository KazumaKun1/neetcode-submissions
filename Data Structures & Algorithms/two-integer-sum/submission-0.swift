class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dictionary = [Int: Int]()
        for (index, num) in nums.enumerated() {
            let value = target - num
            if let storedIndex = dictionary[value] {
                return [storedIndex, index]
            }
            
            dictionary[num] = index
        }

        return []
    }
}
