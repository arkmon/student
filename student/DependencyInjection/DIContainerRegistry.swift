//
//  DIContainerRegistry.swift
//  student
//
//  Created by Arkadiusz Dowejko on 03/11/2017.
//  Copyright © 2017 arkmon. All rights reserved.
//

import Foundation
import Swinject

protocol DIContainerRegistry {
    static func registerDependencies(in: Container)
}
