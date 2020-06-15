//
//  Easy_CalcTests.swift
//  Easy CalcTests
//
//  Created by Gokul Nair on 15/06/20.
//  Copyright © 2020 Gokul Nair. All rights reserved.
//

import XCTest

class Easy_CalcTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testGetHours() {
        XCTAssert(wage.getHours(forWage: 10, price: 100) == 10)
        XCTAssert(wage.getHours(forWage: 25.67, price: 789.89) == 31)
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
