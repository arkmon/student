//
//  AppCoordinator.swift
//  student
//
//  Created by Arkadiusz Dowejko on 07/10/2017.
//  Copyright © 2017 arkmon. All rights reserved.
//

import UIKit

final class AppCoordinator: Coordinator {

    weak var delegate: CoordinatorDelegate?
    var root: UINavigationController?
    var startScreenViewCoordinator: StartScreenCoordinator?
    
    required init(with delegate: CoordinatorDelegate?) {
        self.delegate = delegate
    }
    
    func start() {
        root = UINavigationController()
        if let root = root {
            delegate?.present(root)
        }
        
        startScreenViewCoordinator = StartScreenCoordinator(with: self)
        startScreenViewCoordinator?.start()
    }
}

extension AppCoordinator: CoordinatorDelegate {
    func present(_ viewController: UIViewController) {
        root?.pushViewController(viewController, animated: true)
    }

    func dismiss(_ viewController: UIViewController) {
        if let viewControllerIndex = self.root?.viewControllers.index(of: viewController) {
            self.root?.viewControllers.remove(at: viewControllerIndex)
        }
    }
}
