//
//  ArticleListConstructorTests.swift
//  WorldNews
//
//  Created by Christian Cabarrocas on 27/03/16.
//  Copyright © 2016 Wasabilabs. All rights reserved.
//

import XCTest
@testable import WorldNews

class ArticleListConstructorTests: XCTestCase {
    
    var communicator: Communicator!
    var constructor: ArticleListConstructor!
    let expectation = XCTestExpectation()
    
    override func setUp() {
        super.setUp()
        communicator = Communicator()
        constructor = ArticleListConstructor(communicator: communicator, apiEndpoint: APIEndpoint.TopStoriesHome)
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testConstructorInit() {
        XCTAssertTrue(constructor.cellHeight == 80.0)
        XCTAssertNotNil(constructor.communicator)
        XCTAssertNotNil(constructor.apiEndpoint)
        XCTAssertTrue(constructor.apiEndpoint == APIEndpoint.TopStoriesHome)
    }
    
    func testUpdataData() {
        constructor.updateData { (result) -> Void in
            XCTAssertNotNil(result)
        }
    }
}
