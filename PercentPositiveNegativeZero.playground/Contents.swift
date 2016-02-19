import UIKit
/*
Plus Minus
https://www.hackerrank.com/challenges/plus-minus/
*/

var arr = readLine()?.characters.split(" ").map(String.init).flatMap({ Int($0)}) ?? []

var positive = 0.0
var zero = 0.0
var negative = 0.0

for number in arr {
    
    switch number {
    case let n where n > 0: positive += 1
    case let n where n < 0: negative += 1
    case let n where n == 0:  zero += 1
    default: continue
        
    }
}
let count = Double(arr.count)
print(positive / count)
print(negative / count)
print(zero / count)



