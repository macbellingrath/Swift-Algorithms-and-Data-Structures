//
//  main.swift
//  Fibonacci
//
//  Created by Mac Bellingrath on 2/20/16.
//  Copyright © 2016 Mac Bellingrath. All rights reserved.
//

import Foundation


//Fib Iterative

public func fibIteritive(n: Int) -> Int {
    
    if n == 0 || n == 1 { return n }
    
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

class MainProcess {
    var shouldExit = false
    
    func start () {
        print("Enter a number ... ")
        guard let num = Int(readLine() ?? "")  else { exit(0) }
        
        var fibNum: Int = num
        
        //Background
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0)) { () -> Void in
            
            fibNum = fibIteritive(num)
            //Main
            
            dispatch_async(dispatch_get_main_queue()) { () -> Void in
                
            print(fibNum)
             self.shouldExit = true
                
            }
    
        }
        
    }
}



var runLoop : NSRunLoop
var process : MainProcess

autoreleasepool {
    runLoop = NSRunLoop.currentRunLoop()
    process = MainProcess()
    process.start()
    
    while (!process.shouldExit && (runLoop.runMode(NSDefaultRunLoopMode, beforeDate: NSDate(timeIntervalSinceNow: 2)))) {
        // do nothing
    }
}





//Recurse
//
//public func fib(n: Int) -> Int {
//    if n == 0 || n == 1 { return n }
//    
//    return fib(n - 1) + fib(n - 2)
//}
//
//
//


