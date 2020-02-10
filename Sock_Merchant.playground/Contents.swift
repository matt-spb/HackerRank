import Foundation


let arr = [10, 20, 20, 10, 10, 30, 50, 10, 20]

func sockMerchant(n: Int, ar: [Int]) -> Int {
    //var arr = [Int]()
    var dict = [Int: Int?]()
    var counter = 0
    ar.forEach({ (num) in
        if dict[num] != nil {
            counter += 1
            dict[num] = nil
        } else {
            dict[num] = 1
        }
    })
//        if !arr.contains(num) {
//            arr.append(num)
//        } else {
//            arr.remove(at: arr.firstIndex(of: num)!)
//            counter += 1
//        }
        // высокая сложность из за цикла в цикле
        // со словарем быстрее поиск по ключу
    

    return counter
}

print(sockMerchant(n: 9, ar: arr))
