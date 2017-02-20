
// 3. Longest Substring Without Repeating Characters

// Given a string, find the length of the longest substring without repeating characters.

// Example:

// Given "abcabcbb", the answer is "abc", which the length is 3.
// Given "bbbbb", the answer is "b", with the length of 1.
// Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.

//soltion

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        guard s.characters.count != 0 else {
            return 0
        }
        
        var set = Set<Character>()
        var maxLen = 0
        var startIndex = 0
        var chars = [Character](s.characters)
        
        for i in 0 ..< chars.count {
            var currentChar = chars[i]
            
            if set.contains(currentChar) {
                maxLen = max(maxLen, i - startIndex)
                while chars[startIndex] != currentChar {
                    set.remove(chars[startIndex])
                    startIndex += 1
                }
                startIndex += 1
            } else {
                set.insert(currentChar)
            }
        }
        
        maxLen = max(maxLen, chars.count - startIndex)
        
        return maxLen
    }
}
