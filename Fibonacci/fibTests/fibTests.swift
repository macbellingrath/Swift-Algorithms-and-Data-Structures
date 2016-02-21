//
//  fibTests.swift
//  fibTests
//
//  Created by Mac Bellingrath on 2/20/16.
//  Copyright © 2016 Mac Bellingrath. All rights reserved.
//

import XCTest
@testable import Fibonacci

class fibTests: XCTestCase {

    func testFibonacciPerformance() {
        self.measureBlock { () -> Void in
            
            let n = 50
            
            let outPut = fibIteritive(25)
            
            XCTAssertNotEqual(outPut, 25)
        }
    }
    
}
