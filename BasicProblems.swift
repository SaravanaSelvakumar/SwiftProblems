1.) Remove Duplicates from a String 

var arr: [Int] = [1,1,2,2,3,4,5,1,2,3,4,5,6,22]

func removeDuplicate(_ array: [Int]) -> [Int] {
    var seen = Set<Int>()
    var result: [Int] = []

    for num in array {
        if !seen.contains(num) {
            seen.insert(num)
            result.append(num)
        }
    }

    return result
}

func removeDuplicate1(_ array: [Int]) -> [Int] {
    var temp  = Set<Int>()
    return arr.filter{temp.insert($0).inserted}
}

func removeDuplicate2(_ array: [Int]) -> [Int] {
    var temp: [Int] = []

    for i in array {
        var isDuplicate = false
        for j in temp {
            if i == j {
                isDuplicate = true
                break
            }
        }
        if !isDuplicate {
            temp.append(i)
        }
    }

    return temp
}

let result = removeDuplicate(arr)
print(result)

func checkPrime(_ number: Int) -> Bool {
  if number <= 1 { return false }  // 2 <= 1 
  for i in 2..<number {
      if number % i == 0 {
         return false  
      } 
  }
  return true
}

print(checkPrime(6))


func checkPrime(_ number: Int) -> Bool {
    if number <= 1 { return false }
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

print(checkPrime(4))   // false
print(checkPrime(7))   // true


