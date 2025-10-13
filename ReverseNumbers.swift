let number = -9214

func reverse(_ num: Int)-> Int {
    let isNegative = num < 0
    var value  = abs(num)
    var res = 0
    
    while value > 0 {
        let digit = value % 10
        res = res * 10 + digit
        value /= 10
    }
    
    return isNegative ? -res : res
}

print (reverse(number))
