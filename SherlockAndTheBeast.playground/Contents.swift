//: Playground - noun: a place where people can play

import UIKit

public func getLine() -> String {
    return readLine() ?? ""
}
public func getInt() -> Int {
    return Int(readLine() ?? "") ?? 0
}

public func getArrayOfLines(n: Int) -> [String] {
    var lines = [String]()
    for _ in 0..<n {
        lines.append(getLine())
    }
    return lines
}

public func getLineToArray() -> [String] {
    let currentLine = getLine()
    let retVal = currentLine.componentsSeparatedByCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
    return retVal.filter { Int($0) != nil }
}

//0, 5, 10, 15
//3, 6, 9, 12


/* requirements 
 - digits of 3s and 5s
 - number of 3s it contains div by 5
 - number of 5s it contains div by 3
 - more than one of such number..pick largest one
 - if no decent number...print -1


 sample input
 4
 1
 3
 5
 11
 
 sample output
 -1
 555
 33333
 55555533333
*/

extension Int {
   
    var digits: [Int] {
        return description.characters.flatMap{ Int(String($0)) }
    }
    func countOf(digit: Int) -> Int {
        var count = 0
        for d in self.digits where d == digit {
            count += 1
        }
        return count
    }
    
    var isDecent: Bool {
       
        return (self.digits.filter { ($0 != 3) && ($0 != 5) }.count == 0)
            && (self.countOf(3) % 5  == 0 && self.countOf(5) % 3 == 0)
    }
}
public class RangeGenerator: GeneratorType {
    let start: Int
    let end: Int
    let step: Int
    let clockWise: Bool
    
    var stepNum = 0
    
    public init(start: Int, end: Int, step: Int) {
        self.start = start
        self.end = end
        self.step = step
        clockWise = step > 0
    }
    
    public func next() -> Int? {
        if clockWise {
            guard start + stepNum * step < end else { return nil }
            return start + step * stepNum++
        } else {
            guard start + stepNum * step > end else { return nil }
            return start + step * stepNum++
        }
    }
}

struct SRange: SequenceType {
    var start = 0
    var end = 0
    var step = 0
    
    init(start: Int, end: Int, step: Int) {
        self.start = start
        self.end = end
        self.step = step
    }
    func generate() -> RangeGenerator {
        return RangeGenerator(start: start, end: end, step: step)
    }
}




var numLines = getInt()
for _ in 0..<numLines {
    let numDigits = getInt()
    for i in SRange(start: numDigits/3*3, end: -1, step: -3) {
        if (numDigits - i) % 5 == 0 {
            let fives = String(count: i, repeatedValue: Character("5"))
            let threes = String(count: i, repeatedValue: Character("3"))
            print(fives + threes)
        } else if (numDigits - i) % 5 != 0 {
        print(-1)
        }
    }
}