import UIKit
 /// HackerRank Insertion Sort Part I

let countOfNums = Int(readLine() ?? "" ) ?? 0

var array = (readLine() ?? "").characters.split(" ").map{String($0)}.flatMap{ Int($0)}

func insertionSort(array: [Int]) -> [Int] {
    var a = array
    
    for i in 0..<a.count {
        var j = i
        let temp = a[j]
        while j > 0 && temp < a[j - 1] {
            a[j] = a[j - 1]
            
            print(a.map{String($0)}.joinWithSeparator(" "))
            j -= 1
            
        }
        a[j] = temp
        
    }
    print(a.map{String($0)}.joinWithSeparator(" "))
    return a
}

insertionSort(array)