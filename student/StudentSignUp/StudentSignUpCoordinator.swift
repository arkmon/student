//
//  StudentSignUpCoordinator.swift
//  student
//
//  Created by Arkadiusz Dowejko on 07/10/2017.
//  Copyright © 2017 arkmon. All rights reserved.
//

import UIKit

final class StudentSignUpCoordinator: Coordinator {
    
    weak var delegate: CoordinatorDelegate?
    var root: StudentSignUpViewController?
    
    required init(with delegate: CoordinatorDelegate?) {
        self.delegate = delegate
    }
    
    func start() {
        root = StudentSignUpViewController()
        root?.viewModel = StudentSignUpViewModel()
        root?.viewModel?.coordinatorDelegate = self

        if let root = root {
            delegate?.present(root)
        }
    }
}

extension StudentSignUpCoordinator: CoordinatorDelegate {
    
    func present(_ viewController: UIViewController) {
        delegate?.present(viewController)
    }

    func dismiss(_ viewController: UIViewController) {
        delegate?.dismiss(viewController)
    }
}

