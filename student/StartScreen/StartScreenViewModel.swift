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

}

extension StartScreenViewModel {
    func showStudentSignUp() {
        coordinatorDelegate?.showStudentSignUp()
    }
}
