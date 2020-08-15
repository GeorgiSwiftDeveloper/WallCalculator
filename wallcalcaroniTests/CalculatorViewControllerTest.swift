//
//  CalculatorViewControllerTest.swift
//  wallcalcaroniTests
//
//  Created by Georgi Malkhasyan on 8/15/20.
//  Copyright © 2020 Caleb Stultz. All rights reserved.
//

import XCTest
@testable import wallcalcaroni

class CalculatorViewControllerTest: XCTestCase {

    var sut: CalculatorViewController!
    
    override func setUpWithError() throws {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(withIdentifier: "CalculatorViewController") as! CalculatorViewController
    }

    override func tearDownWithError() throws {
       sut = nil
        
    }

}
