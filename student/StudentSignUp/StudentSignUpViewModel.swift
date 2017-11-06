//
//  StudentViewModel.swift
//  student
//
//  Created by Arkadiusz Dowejko on 06/10/2017.
//  Copyright © 2017 arkmon. All rights reserved.
//

import CoreData
import UIKit

final class StudentSignUpViewModel {

    var coreDataStack: CoreDataStack?
    var students: [Student?] = []

    weak var coordinatorDelegate: CoordinatorDelegate?
    
    var genderArray: [String] {
        return [Gender.male.rawValue, Gender.female.rawValue]
    }
    
    func createStudent(firstName: String, lastName: String, gender: String, email: String, university: String) {
        coreDataStack = AppDIContainer.resolve(CoreDataStack.self)

        if let context = coreDataStack?.persistentContainer.viewContext {
            let student = Student(context: context)
            student.firstName = firstName
            student.lastName = lastName
            student.gender = gender
            student.email = email
            student.university = university
            coreDataStack?.saveContext()
        }
    }

    var numberOfItemsInGenderArray: Int {
        return genderArray.count 
    }
    
    func dismiss(_ viewController: UIViewController) {
        
        coordinatorDelegate?.dismiss(viewController)
    }
}
