import UIKit

let str = "ababa"
let numberOfLetters = 3

func repeatedString(s: String, n: Int) -> Int {
    
    var counter = 0
    
    //корткий путь, если n <= длины строки
    if n <= s.count {
        for i in 0..<n {
            let index = s.index(s.startIndex, offsetBy: i)
            if s[index] == "a" {
                counter += 1
            }
        }
    } else {
        //находим количество "а" в строке-аргументе
        var repeatsInArgument = 0
        for char in s {
            if char == "a" {
                repeatsInArgument += 1
            }
        }
        //дальше ищем "а" в строке, длиной (n - s.count * целое кол-во раз), кот длина строки помещается в n
        let repeatTimes = n / s.count
        let restLengthOfString = n - repeatTimes * s.count
        
        //промежуточное значение
        counter = repeatsInArgument * repeatTimes
        for i in 0..<restLengthOfString {
            let index = s.index(s.startIndex, offsetBy: i)
            if s[index] == "a" {
                counter += 1
            }
        }
    }

    return counter
}

print(repeatedString(s: str, n: numberOfLetters))
