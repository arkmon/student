//
//  AppCoordinator.swift
//  student
//
//  Created by Arkadiusz Dowejko on 07/10/2017.
//  Copyright © 2017 arkmon. All rights reserved.
//

import UIKit

class AppCoordinator: Coordinator, CoordinatorDelegate {

    weak var delegate: CoordinatorDelegate?
    var root: UIViewController?
    var startScreenViewCoordinator: StartScreenCoordinator?
    
    required init(with delegate: CoordinatorDelegate?) {
        self.delegate = delegate
    }
    
    func start() {
        startScreenViewCoordinator = StartScreenCoordinator(with: self)
        startScreenViewCoordinator?.start()
    }
    
    func present(_ viewController: UIViewController) {
        delegate?.present(viewController)
    }
    
    func dismiss(_ viewController: UIViewController) {
        delegate?.dismiss(viewController)
    }
}

