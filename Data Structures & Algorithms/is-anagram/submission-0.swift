class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }

        if s.isEmpty || t.isEmpty {
            return false
        }

        var lookUpS = [Character: Int]()
        var lookUpT = [Character: Int]()

        for char in s {
            lookUpS[char, default: 0] += 1
        }

        for char in t {
            lookUpT[char, default: 0] += 1
        }

        return lookUpS == lookUpT
    }
}
