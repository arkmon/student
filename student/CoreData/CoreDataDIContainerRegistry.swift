//
//  CoreDataDIContainerRegistry.swift
//  student
//
//  Created by Arkadiusz Dowejko on 03/11/2017.
//  Copyright © 2017 arkmon. All rights reserved.
//

import Foundation
import Swinject
import CoreData

final class CoreDataDIContainerRegistry: DIContainerRegistry {
    class func registerDependencies(in container: Container) {
        container.register(CoreDataStack.self) { _ in
            let container = NSPersistentContainer(name: "student")
            container.loadPersistentStores(completionHandler: { (storeDescription, error) in
                if let error = error as NSError? {

                    fatalError("Unresolved error \(error), \(error.userInfo)")
                }
            })
            return CoreDataStack(persistentContainer: container)

        }

    }
}
