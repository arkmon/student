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
    var coreDataStack: CoreDataStack?

    override func setUp() {
        super.setUp()
        coreDataStack = AppDIContainer.resolve(CoreDataStack.self)

        let entity = NSEntityDescription.insertNewObject(forEntityName: "student", into: (coreDataStack?.setUpInMemoryManagedObjectContext())!)
        sut = StudentSignUpViewModel()
    }

    override func tearDown() {

        super.tearDown()
    }

    func testExample() {
        //Given
        //When
        sut.createStudent(firstName: "Arki", lastName: "Dowejko", gender: Gender.male.rawValue, email: "ark@gmail.com", university: "Westminster")
        //Then
        //XCTAssertNotNil(student)
    }
}
