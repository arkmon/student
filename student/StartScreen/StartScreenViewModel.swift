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
    var expenses: [Student?] = []
    weak var coordinatorDelegate: StudentSignUpCoordinatorDelegate?
    
    func getData() {
        let context = coreDataStack.persistentContainer.viewContext
        
        do {
            expenses = try context.fetch(Student.fetchRequest())
            makeTheList()
        }
            
        catch {
            print("Fetching Failed")
        }
    }
    
    
    func makeTheList() {
        for expense: Student? in expenses {
            print(expense?.email as Any)
        }
    }
}

extension StartScreenViewModel {
    func showStudentSignUp() {
        coordinatorDelegate?.showStudentSignUp()
    }
}
