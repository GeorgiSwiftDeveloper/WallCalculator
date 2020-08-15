//
//  CalculatorManagerTests.swift
//  wallcalcaroniTests
//
//  Created by Georgi Malkhasyan on 8/14/20.
//  Copyright © 2020 Caleb Stultz. All rights reserved.
//

import XCTest
@testable import wallcalcaroni

class CalculatorManagerTests: XCTestCase {
    
    //sut = System under Test
    var sut: CalculationManager!
    
    override func setUpWithError() throws {
        sut = CalculationManager()

    }

    override func tearDownWithError() throws {
        sut = nil
    }
    
    
    func testInit_WhenGivenValues_TakesValues() {
        let calcManager = CalculationManager(valueA: 10, valueB: 20, currentOperand: .multiply, valueEntryArray: [])
        XCTAssertEqual(calcManager.valueA, 10)
    }

//    func testExample() throws {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
//
//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
