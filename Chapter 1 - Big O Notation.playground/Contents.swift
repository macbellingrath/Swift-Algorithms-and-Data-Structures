//: Playground - noun: a place where people can play

import UIKit


/* Asymptotic analysis is the process of describing the efficiency of algorithms as their input size (n) grows. 
*/

//array of sorted integers
let numberlist: Array<Int> = [1,2,3,4,5,6,7,8,9,10]


//Linear time

func linearSearch(key: Int) {
    //check all possible values
    
    for number in numberlist {
        if number == key {
            print("value \(key) found..")
            break
        }
    }
}

//Logarithmic time

func binarySearch(key: Int, imin: Int, imax: Int) {
    
    var midIndex: Double = round(Double((imin + imax)/2))
    var midNumber = numberlist[Int(midIndex)]
    
    //reduce range
    if midNumber > key {
        binarySearch(key, imin: imin, imax: Int(midIndex) - 1 )
    }
    
    //increase the range
   else if midNumber < key {
        binarySearch(key, imin: Int(midIndex) + 1, imax: imax)
    }
    
    else {
        print("value \(key) found")
    }
}

binarySearch(10, imin: 1, imax: 10)

for x in 1..<10 {
    binarySearch(x, imin: 1, imax: 10)
}













