//
//  StudentViewModel.swift
//  student
//
//  Created by Arkadiusz Dowejko on 06/10/2017.
//  Copyright © 2017 arkmon. All rights reserved.
//

import Foundation
import os.log

final class StudentSignUpViewModel {
    var students = [Student]()
    
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("students")
    
    var genderArray: [String] {
        return [Gender.male.rawValue, Gender.female.rawValue]
    }
    
    func createStudent(firstName: String, lastName: String, gender: String, email: String, university: String) {
        let student = Student(studentId: "1",
                              firstName: firstName,
                              lastName: lastName,
                              gender: gender,
                              email: email,
                              university: university)
        
        students += [student]
        
        
        
    saveStudents()
    }
    
    private func saveStudents() {
        let encodedData = try? JSONEncoder().encode(students)
        
        //Create JSON
        var json: Any?
        if let data = encodedData {
            json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments)
        }
        
        //Print JSON Object
        if let json = json {
            print("Person JSON:\n" + String(describing: json) + "\n")
        }
        let isSuccessfulSave = NSKeyedArchiver.archiveRootObject(encodedData, toFile: StudentSignUpViewModel.ArchiveURL.path)
        if isSuccessfulSave {
            os_log("Meals successfully saved.", log: OSLog.default, type: .debug)
        } else {
            os_log("Failed to save meals...", log: OSLog.default, type: .error)
        }
    }
    
    func saveStudent(student: Student) {
        
    }
    
    var numberOfItemsInGenderArray: Int {
        return genderArray.count 
    }
}
