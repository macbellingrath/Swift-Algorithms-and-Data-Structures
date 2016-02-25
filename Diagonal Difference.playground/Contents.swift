import UIKit

/* Diagonal Difference
https://www.hackerrank.com/challenges/diagonal-difference
*/

/*
[1,2,3]
[4,5,6]
[7,8,9]

var diagSum1 = matrix[0][0] + matrix[1][1] + matrix[2][2]
var diagSum2 = matrix[0][2] + matrix[1][1] + matrix[2][0]
*/


//var n = Int(readLine() ?? "") ?? 0
var matr = [[Int]]()

var diagSum1 = 0
var diagSum2 = 0

let m: String? = "1 2 3 /n 4 5 6 /n 7 8 9"

if let array = m?.characters
                    .split(" ")
                    .map(String.init)
                    .flatMap({ Int($0)}) {
    matr.append(array)
}

var n = matr.count
matr

for r in 0..<n {
    
    diagSum1 += matr[r][r]
    diagSum2 += matr[r][(n - 1) - r]
}

print(abs(diagSum1 - diagSum2))





/*
If lines not given already separated by Row
*/

var arr = m?.characters.split(" ").map(String.init).flatMap({ Int($0)}) ?? [1, 2, 3, 4, 5, 6, 7, 8, 9]


var matrix = Array(count: n, repeatedValue: Array(count:n, repeatedValue:0))

var i = 0

for row in 0..<n {
    if row == 0 {
        diagSum1 += arr[row]
        diagSum2 += arr[row + (n - 1)]
    } else if row > 0 {
    diagSum1 += arr[ row + (n + 1) ]
    diagSum2 += arr[ (n * row) ]
    }
}
let difference = abs(diagSum1 - diagSum2)
print(difference)

    for row in 0..<n {
        for column in 0..<n {
            diagSum1 += arr[row + column]
            matrix[row][column] = arr[i]
            i += 1
        }
    }

for r in 0..<n {
    
    diagSum1 += matrix[r][r]
    diagSum2 += matrix[r][(n - 1) - r]
}

print(abs(diagSum1 - diagSum2))


