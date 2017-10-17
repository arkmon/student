//
//  studentTests.swift
//  studentTests
//
//  Created by Arkadiusz Dowejko on 06/10/2017.
//  Copyright © 2017 arkmon. All rights reserved.
//

import XCTest
import CoreData
@testable import student

class studentTests: XCTestCase {

    var sut: StudentSignUpViewModel!

    override func setUp() {
        super.setUp()
        let coreDataStack = CoreDataStack()

        let entity = NSEntityDescription.insertNewObject(forEntityName: "student", into: coreDataStack.setUpInMemoryManagedObjectContext())
        sut = StudentSignUpViewModel()
    }

    override func tearDown() {

        super.tearDown()
    }
    
    func testExample() {
        //Given

        //When

        sut.createStudent(firstName: "Arki", lastName: "Dowejki", gender: Gender.male.rawValue, email: "ark@gmail.com", university: "Westminster")
        //Then
        //XCTAssertNotNil(student)


    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
