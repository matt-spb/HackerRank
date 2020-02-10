import UIKit

func countingValleys(n: Int, s: String) -> Int {
    var level = 0
    var valleyCount = 0
    var valleyBegin = false
    for char in s {
        if char == "U" {
            level += 1
        } else {
            level -= 1
        }
        
        switch level {
        case -1:
            valleyBegin = true
        case 0:
            if valleyBegin {
                valleyCount += 1
                valleyBegin = false
            }
        default:
            break
        }
    }
    return valleyCount
}

let n = 12
let s = "DDUUDDUDUUUD"

print(countingValleys(n: n, s: s))
