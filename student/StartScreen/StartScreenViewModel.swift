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
    
    var coreDataStack = CoreDataStack()
    var students: [Student?] = []
    
    weak var coordinatorDelegate: StartScreenCoordinatorDelegate?
    
    func getData() {
        let context = coreDataStack.persistentContainer.viewContext
        
        do {
            students = try context.fetch(Student.fetchRequest())
            makeTheList()
        }
            
        catch {
            print("Fetching Failed")
        }
    }
    
    func makeTheList() {
        for student: Student? in students {
            //start encoding
            print(student?.email as Any)
        }
    }

    func showStudentSignUp() {
        coordinatorDelegate?.showStudentSignUp()
    }
}
