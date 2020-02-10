import Foundation

func jumpingOnClouds(c: [Int]) -> Int {
    var index = 0
    var counter = 0
    while index != (c.count - 1) {
        if index < c.count - 2 && c[index + 2] != 1 {
            index += 2
        } else {
            index += 1
        }
        counter += 1
    }
    return counter
}

let c = [0, 0, 0, 0, 1, 0]

print(jumpingOnClouds(c: c))


