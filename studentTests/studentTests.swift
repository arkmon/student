//
//  studentTests.swift
//  studentTests
//
//  Created by Arkadiusz Dowejko on 06/10/2017.
//  Copyright © 2017 arkmon. All rights reserved.
//

import XCTest
@testable import student

class studentTests: XCTestCase {
    
    override func setUp() {
        super.setUp()

    }
    
    override func tearDown() {

        super.tearDown()
    }
    
    func testExample() {
        //Given
        let student = Student(studentId: "01", firstName: "Arki", lastName: "Dowejki", gender: Gender.male, email: "ark@gmail.com")
        //When

        //Then
        XCTAssertNotNil(student)


    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
