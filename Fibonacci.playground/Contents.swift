//: Playground - noun: a place where people can play

import UIKit
/*
Write a function fib() that a takes an integer 'n'
and returns the 'nth' fibonacci number.
*/

func fib(n: Int) -> Int {
    
    //base case
    if n == 1 || n == 0 { return n }
    
    //recursive case
    var prev = 0
    var prevPrev = 1
    var current = 0
    
    for _ in 0..<n {
        current = prev + prevPrev
        prevPrev = prev
        prev = current
    }
   return current
}

fib(4)

