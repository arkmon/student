//
//  StartScreenViewModel.swift
//  student
//
//  Created by Arkadiusz Dowejko on 08/10/2017.
//  Copyright © 2017 arkmon. All rights reserved.
//

import UIKit

final class StartScreenViewModel {
    weak var coordinatorDelegate: StudentSignUpCoordinatorDelegate?
    var students = [Student]()
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("students")
    
    private func loadStudents() -> [Student]?  {
        return NSKeyedUnarchiver.unarchiveObject(withFile: StartScreenViewModel.ArchiveURL.path) as? [Student]
    }
    
    func uploadStudents() {
        
        if let savedStudents = loadStudents() {
            students += savedStudents
        }
    }
}

extension StartScreenViewModel {
    func showStudentSignUp() {
        coordinatorDelegate?.showStudentSignUp()
    }
}
