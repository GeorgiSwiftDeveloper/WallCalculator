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
        XCTAssertEqual(calcManager.valueB, 20)
    }


    func testValues_AreIniitialyZero() {
        XCTAssertEqual(sut.valueA, 0)
        XCTAssertEqual(sut.valueB, 0)
    }
    
    
    func testvalues_Inserting_ChangesValueA(){
        sut.insert(value: 10)
        XCTAssertEqual(sut.valueA, 10)
    }
    
    
    func testOperand_isNil(){
        XCTAssertNil(sut.currentOperand)
    }

}
