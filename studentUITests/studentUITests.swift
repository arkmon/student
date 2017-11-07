//
//  studentUITests.swift
//  studentUITests
//
//  Created by Arkadiusz Dowejko on 06/10/2017.
//  Copyright © 2017 arkmon. All rights reserved.
//

import XCTest

class studentUITests: XCTestCase {
    var app: XCUIApplication?
    override func setUp() {
        super.setUp()
        app = XCUIApplication()

        continueAfterFailure = false
        XCUIApplication().launch()
    }

    func testStartScreen() {
        if let app = app {
            XCTAssert(app.staticTexts["UNiDAYS"].exists)
            XCTAssert(app.buttons["Upload"].exists)
            XCTAssert(app.buttons["New student"].exists)
        }
    }
}
