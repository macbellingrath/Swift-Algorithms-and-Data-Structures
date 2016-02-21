import Foundation


let testNumber = 20

//Recurse

/* upper bound
for n <= 1  O(n)
for all n where n > 1 
O(2 * 10^n) aka exponential time
*/

/* lower bound
*/

func fib(n: Int) -> Int {
    if n == 0 || n == 1 { return n }
    
    return fib(n - 1) + fib(n - 2)
}





//Fib Iterative
// Int Overflows at 9223372036854775807 + 1
func fibIteritive(n: Int) -> Int {
    
    if n == 0 || n == 1 { return n }
    
    //Fix this
    guard n < 9223372036854775807 - 1 else { return 0 }
    
    var previous = 0
    var prevPrev = 1
    
    var current = 0
    
    for _ in 0..<n {
        current = previous + prevPrev
        prevPrev = previous
        previous = current
        
    }
    return current
    
}

print(Int.max)





fibIteritive(testNumber)
fib(testNumber)
