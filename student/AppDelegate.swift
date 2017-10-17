//
//  AppDelegate.swift
//  student
//
//  Created by Arkadiusz Dowejko on 06/10/2017.
//  Copyright © 2017 arkmon. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appCoordinator: AppCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        setUpCoordinator()
        return true
    }
    
    func setUpCoordinator() {
        appCoordinator = AppCoordinator(with: self)
        appCoordinator?.start()
    }

}

extension AppDelegate: CoordinatorDelegate {
    
    func present(_ viewController: UIViewController) {
        window?.rootViewController = viewController
    }

    func dismiss(_ viewController: UIViewController) {
        if window?.rootViewController == viewController {
            window?.rootViewController = nil
        }
    }
}
