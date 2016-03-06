import UIKit

/* 

__Utopian Tree__

2 cycles of growth every year
each summer, h increases by 1 meter

at t = 0, h = 1 , season = spring

spring - height *= 2
Summer - height += 1

height after n growth cycles


Input
t = number of test cases
0
1
4

output
1
2
7

*/



enum Season {
    
    case Spring
    case Summer
}

struct Tree {
    
    
    var heightInMeters: Int
    
    var currentSeason: Season
    
    mutating func heightAfterGrowthCycles(n: Int) -> Void {
      
        guard heightInMeters >= 1 else { return }
    
        for _ in 0..<n {
           
            switch currentSeason {
            
            case .Spring:
                
                heightInMeters *= 2
                
                currentSeason = .Summer
        
                
            case .Summer:
                
                heightInMeters += 1
                
                currentSeason = .Spring
                
            }
            
        }
        
    print(self.heightInMeters)
        
    }
}


let t = Int( readLine() ?? "" ) ?? 3

for _ in 0..<t {
    var tree = Tree(heightInMeters: -19, currentSeason: .Spring)
    
    tree.heightAfterGrowthCycles(Int(readLine() ?? "") ?? 0)
    
    
}

let testValues = [0, 1, 4]

let expectedValues = [1, 2, 7]



let x = 19
0...20 ~= x

switch x {
case 0...20 ~= x: print("hi")
default: break
}
