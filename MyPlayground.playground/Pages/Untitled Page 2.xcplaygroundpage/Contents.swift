//: [Previous](@previous)

import Foundation


var optionalInt: Int? = 5

optionalInt < 10

optionalInt > 10

optionalInt = nil

optionalInt <  10
optionalInt > 10

var optionalDouble: Double?  = 10.0

optionalDouble < 10.0
optionalDouble > 10.0
optionalDouble = nil
optionalDouble < 10.0
optionalDouble > 10.0



infix operator << { associativity left }

func << <T:Comparable>(lhs: T?, rhs: T?) -> Bool? {
    
    guard let l = lhs, let r = rhs else { return nil }
    
    return l < r
}

infix operator >> { associativity left }

func >> <T: Comparable>(lhs: T?, rhs: T?) -> Bool? {
    
    guard let l = lhs, let r = rhs else { return nil }
    
    return l > r
}


optionalDouble << 10.0
optionalDouble >> 10.0



nil << 1

//: [Next](@next)
