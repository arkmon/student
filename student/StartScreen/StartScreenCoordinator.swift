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
    
    required init(with delegate: CoordinatorDelegate?) {
        self.delegate = delegate
    }
    
    func start() {
        root = StartScreenViewController()
        if let root = root {
            delegate?.present(root)
        }
    }
}

