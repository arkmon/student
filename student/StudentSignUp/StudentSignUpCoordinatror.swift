//
//  StudentSignUpCoordinatror.swift
//  student
//
//  Created by Arkadiusz Dowejko on 07/10/2017.
//  Copyright © 2017 arkmon. All rights reserved.
//

import UIKit

class StudentSignUpCoordinatror: Coordinator {
    
    weak var delegate: CoordinatorDelegate?
    var root: StudentSignUpViewController?
    
    required init(with delegate: CoordinatorDelegate?) {
        self.delegate = delegate
    }
    
    func start() {
        root = StudentSignUpViewController()
        root?.viewModel = StudentSignUpViewModel()
        if let root = root {
            delegate?.present(root)
        }
    }
}
