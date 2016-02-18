import UIKit

/*
A Very Big Sum
https://www.hackerrank.com/challenges/a-very-big-sum
*/

var n = Int(readLine() ?? "") ?? 0
var arr = readLine()?.characters.split(" ").map(String.init).flatMap({ Int($0)}) ?? [1]

var sum = 0

for i in 0..<arr.count {
    sum += arr[i]
}


print(sum)

