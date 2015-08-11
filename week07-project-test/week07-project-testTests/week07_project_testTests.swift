//
//  week07_project_testTests.swift
//  week07-project-testTests
//
//  Created by Kyoungchin Seo on 2015. 8. 11..
//  Copyright © 2015년 nhnnext. All rights reserved.
//

import XCTest

class week07_project_testTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDoubleExtension() {
        let oneInch = 25.4.mm
        XCTAssertEqual(oneInch, 0.0254)
        let threeFeet = 3.ft
        XCTAssertEqual(threeFeet, 0.914399970739201)
    }
    
    func testIntKind() {
        XCTAssertEqual((-123).Kind, .Negative)
        XCTAssertEqual(0.Kind, .Zero)
        XCTAssertEqual(123.Kind, .Positive)
    }
    
    func testIntExtension() {
        XCTAssertEqual(746381295[0], 5)
        XCTAssertEqual(746381295[1], 9)
        XCTAssertEqual(746381295[2], 2)
        XCTAssertEqual(746381295[8], 7)
        XCTAssertEqual(746381295[9], 0)
    }
    
    
    
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let spaceAce = BlackjackCard(rank: .Ace, suit: .Spades)
        XCTAssertEqual(spaceAce.rank.values.first, 1)
        
        XCTAssertEqual(spaceAce.rank.values.second!,11)
        
        let clubJack = BlackjackCard(rank: .Jack, suit: .Clubs)
        XCTAssertEqual(clubJack.rank.values.first, 10)
        
        XCTAssertNil(clubJack.rank.values.second)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
