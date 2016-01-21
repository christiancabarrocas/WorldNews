//
//  ArrayExtensionTest.swift
//  WorldNews
//
//  Created by Christian Cabarrocas on 21/01/16.
//  Copyright © 2016 Wasabilabs. All rights reserved.
//

import XCTest

class ArrayExtensionTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testhasItemsExtensionEmptyArray() {
        let emptyArray = [String]()
        XCTAssertFalse(emptyArray.hasItems())
    }
    
    func testhasItemsExtensionWithData() {
        let emptyArray = ["TestArray"]
        XCTAssertTrue(emptyArray.hasItems())
    }
}
