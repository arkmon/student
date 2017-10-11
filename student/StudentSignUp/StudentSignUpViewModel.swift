//
//  StudentViewModel.swift
//  student
//
//  Created by Arkadiusz Dowejko on 06/10/2017.
//  Copyright © 2017 arkmon. All rights reserved.
//

import Foundation

final class StudentSignUpViewModel {

    var genderArray: Array<String> {
        return [Gender.male.rawValue, Gender.female.rawValue]
    }
    
    func createStudent(firstName: String, lastName: String, gender: String, email: String, university: String) {
        var student = Student(studentId: "1", firstName: firstName, lastName: lastName, gender: Gender.female, email: email)
        
    }

    func saveStudent(student: Student) {

    }

    var numberOfItemsInGenderArray: Int {
        return genderArray.count 
    }
}
