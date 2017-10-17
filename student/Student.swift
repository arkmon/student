//
//  Student.swift
//  student
//
//  Created by Arkadiusz Dowejko on 06/10/2017.
//  Copyright © 2017 arkmon. All rights reserved.
//

import Foundation

public struct Student {

    public let studentId: String
    public let firstName: String
    public let lastName: String
    public let gender: String
    public let email: String
    public let university: String
    
    public init(studentId: String,
                firstName: String,
                lastName: String,
                gender: String,
                email: String,
                university: String)
    {
        self.studentId = studentId
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.email = email
        self.university = university
    }
}
