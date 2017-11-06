//
//  StartScreenViewModel.swift
//  student
//
//  Created by Arkadiusz Dowejko on 08/10/2017.
//  Copyright © 2017 arkmon. All rights reserved.
//

import UIKit
import CoreData

final class StartScreenViewModel {

    var coreDataStack: CoreDataStack?
    var students: [Student]?

    weak var coordinatorDelegate: StartScreenCoordinatorDelegate?

    func getData() {
        coreDataStack = AppDIContainer.resolve(CoreDataStack.self)

        students = coreDataStack?.getStudent()

        makeTheList()
    }

    func makeTheList() {
        if let students = students{
            students.forEach{ student in
                //start encoding
                //print(student?.email as Any)
            }
        }

    }

    func showStudentSignUp() {
        coordinatorDelegate?.showStudentSignUp()
    }
}
