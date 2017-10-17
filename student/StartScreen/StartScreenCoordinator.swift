//
//  StartScreenCoordinator.swift
//  student
//
//  Created by Arkadiusz Dowejko on 07/10/2017.
//  Copyright © 2017 arkmon. All rights reserved.
//

import UIKit

final class StartScreenCoordinator: Coordinator {
    
    weak var delegate: CoordinatorDelegate?
    var root: StartScreenViewController?
    var studentSignUpCoordinator: StudentSignUpCoordinator?
    
    required init(with delegate: CoordinatorDelegate?) {
        self.delegate = delegate
    }
    
    func start() {
        root = StartScreenViewController()
        root?.viewModel.coordinatorDelegate = self
        if let root = root {
            delegate?.present(root)
        }
    }
}

extension StartScreenCoordinator: CoordinatorDelegate {
    func present(_ viewController: UIViewController) {
        delegate?.present(viewController)
    }

    func dismiss(_ viewController: UIViewController) {
        delegate?.dismiss(viewController)
    }
}

extension StartScreenCoordinator: StartScreenCoordinatorDelegate {
    func showStudentSignUp() {
        studentSignUpCoordinator = StudentSignUpCoordinator(with: self)
        studentSignUpCoordinator?.start()
    }
}
