//
//  AppDIContainer.swift
//  student
//
//  Created by Arkadiusz Dowejko on 03/11/2017.
//  Copyright © 2017 arkmon. All rights reserved.
//

import Foundation
import Swinject

final class AppDIContainer {
    static var container: Container! = nil
    static var registries: [DIContainerRegistry.Type] = [DIContainerRegistry.Type]()

    class func replaceContainer() {
        let newContainer = Container()

        registries.forEach { registry in
            registerDependencies(in: newContainer, from: registry)
        }

        container = newContainer
    }

    class func registerDependencies(in container: Container, from registry: DIContainerRegistry.Type) {
        registry.registerDependencies(in: container)
    }

    class func resolve<Service>(_ serviceType: Service.Type, name: String? = nil) -> Service? {
        return container?.resolve(serviceType, name: name)
    }
}
