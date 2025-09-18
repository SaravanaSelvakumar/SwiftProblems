~ Question 
Given an array of positive integers nums and a positive integer target, return the minimal length of a subarray whose sum is greater than or equal to target.
If there is no such subarray, return 0 instead. 

- Problem in Simple Words
We want the smallest length of a subarray whose sum is greater than or equal to target (sum ≥ target), If no such subarray exists, return 0.

Example 1: 
Input: target = 7, nums = [2,3,1,2,4,3] 
Output: 2

Example 2: 
Input: target = 4, nums = [1,4,4] 
Output: 1

- solution

// Example 1: Brute force (simplest to understand, but slow) Runs in O(n²)
let target = 7
let nums = [2, 3, 1, 2, 4, 3]
print(minSubArrayLen(target, nums))  // Output: 2

func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
    var minLength = Int.max
    
    for start in 0..<nums.count {
        var sum = 0
        for end in start..<nums.count {
            sum += nums[end]
            
            if sum >= target {
                minLength = min(minLength, end - start + 1)
                break 
            }
        }
    }
    
    return minLength == Int.max ? 0 : minLength
}

// Example 2: Sliding Window (most common + efficient) Runs in O(n)
let target = 7
let nums = [2, 3, 1, 2, 4, 3]
print(minSubArrayLen(target, nums))  // Output: 2

func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
    var left = 0
    var sum = 0
    var minLength = Int.max
    
    for right in 0..<nums.count {
        sum += nums[right]
        
        // While the sum is big enough, shrink from the left
        while sum >= target {
            let length = right - left + 1
            minLength = min(minLength, length)
            sum -= nums[left]
            left += 1
        }
    }
    
    return minLength == Int.max ? 0 : minLength
}
