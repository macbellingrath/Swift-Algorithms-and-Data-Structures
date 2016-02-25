import UIKit

/*
A Discrete Mathematics professor has a class of N students. Frustrated with their lack of discipline, he decides to cancel class if fewer than K students are present when class starts.
 Given the arrival time of each student, determine if the class is canceled.
*/

//Sample Input
//
//2
//4 3
//-1 -3 4 2
//4 2
//0 -1 2 1
//Sample Output
//
//YES
//NO
import Foundation

func getInt() -> Int {
    return Int(readLine() ?? "") ?? 0
}

func getLineToArray() -> [String] {
    let currentLine = readLine() ?? ""
    let retVal = currentLine.componentsSeparatedByCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
    return retVal.filter { Int($0) != nil }
}

var testCases = getInt()

for _ in 0..<testCases {
    let nkArray = getLineToArray().flatMap{Int($0)}
    let k = nkArray[1]
    
    getLineToArray()
        .flatMap{Int($0)}
        .filter{ $0 <= 0 }
        .count >= k ? print("NO") : print("YES")
}


