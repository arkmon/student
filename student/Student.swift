//
//  Student.swift
//  student
//
//  Created by Arkadiusz Dowejko on 06/10/2017.
//  Copyright © 2017 arkmon. All rights reserved.
//

import Foundation

public struct Student {

    public let id: String
    public let firstName: String
    public let lastName: String
    public let gender: Gender
    public let email: String

    public init(id: String, firstName: String, lastName: String, gender: Gender, email: String) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.email = email
    }
}
