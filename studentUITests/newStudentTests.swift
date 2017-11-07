//
//  newStudentTests.swift
//  studentUITests
//
//  Created by Arkadiusz Dowejko on 07/11/2017.
//  Copyright © 2017 arkmon. All rights reserved.
//

import XCTest

class newStudentTests: XCTestCase {
    var app: XCUIApplication?
    override func setUp() {
        super.setUp()
        app = XCUIApplication()

        continueAfterFailure = false
        XCUIApplication().launch()
    }

    func testNewStudent() {
        if let app = app {
            app.buttons["New student"].tap()

            let firstNameTextField = app.textFields["First Name"]
            firstNameTextField.tap()
            firstNameTextField.typeText("arkadiusz")

            let lastNameTextField = app.textFields["Last Name"]
            lastNameTextField.tap()
            lastNameTextField.tap()
            lastNameTextField.typeText("dowejko")

            let genderTextField = app.textFields["Gender"]
            genderTextField.tap()
            genderTextField.typeText("male")

            let emailAddressTextField = app.textFields["Email Address"]
            emailAddressTextField.tap()
            emailAddressTextField.typeText("arkmon@me.com")

            let universityTextField = app.textFields["University"]
            universityTextField.tap()
            universityTextField.typeText("westminster")
            app.buttons["Button"].tap()
        }
    }
}
