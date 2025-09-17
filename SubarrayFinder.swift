✅ What is a subarray?

A subarray is a contiguous part of an array.

"Contiguous" means the elements are next to each other in the original array.

So, we cannot skip elements or change their order.

Example: For [2, 3, 1], valid subarrays are [2], [3], [1], [2, 3], [3, 1], [2, 3, 1].
But [2, 1] is ❌ not a subarray (because 3 is skipped).

📌 Your array:
nums = [2, 3, 1, 2, 4, 3]
Length = 6.
👉 Number of subarrays possible = n * (n + 1) / 2 = 6 * 7 / 2 = 21.

🔎 All possible subarrays:

Length 1 (single elements):

[2], [3], [1], [2], [4], [3]

Length 2:

[2, 3], [3, 1], [1, 2], [2, 4], [4, 3]

Length 3:

[2, 3, 1], [3, 1, 2], [1, 2, 4], [2, 4, 3]

Length 4:

[2, 3, 1, 2], [3, 1, 2, 4], [1, 2, 4, 3]

Length 5:

[2, 3, 1, 2, 4], [3, 1, 2, 4, 3]

Length 6 (whole array):

[2, 3, 1, 2, 4, 3]



🎯 Example problems 

## ✅ Example - 1

let numbers = [1, 4, 4]
var allSubarrays = [[Int]]()  

for start in 0..<numbers.count {
    for end in (start+1)...numbers.count {
        let subarray = Array(numbers[start..<end])
        allSubarrays.append(subarray)  
    }
}

print(allSubarrays)

## ✅ Example - 2

let numbers = [1, 4, 4]

func findSubarrays(_ arr: [Int]) -> [[Int]]  {
    var allSubarrays = [[Int]]()
    for start in 0..<arr.count { 
        for end in start..<arr.count { 
            let data  = Array(arr[start...end]) 
            allSubarrays.append(data)
        }
    }
   return allSubarrays 
}

print(findSubarrays(numbers))

## ✅ Example - 3  Using flatMap + indices

let numbers = [1, 4, 4]

let allSubarrays = (0..<numbers.count).flatMap { start in
    (start+1...numbers.count).map { end in
        Array(numbers[start..<end])
    }
}

print(allSubarrays)

