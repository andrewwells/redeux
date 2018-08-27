//
//  AppDelegate.swift
//  redeux
//
//  Created by Andrew Wells on 8/26/18.
//  Copyright © 2018 Andrew Wells. All rights reserved.
//

import UIKit
import ReSwift
import ReSwiftRouter
import IQKeyboardManagerSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // Setup Keyboard Manager
        IQKeyboardManager.shared.enable = true
        IQKeyboardManager.shared.shouldResignOnTouchOutside = true
        // IQKeyboardManager.shared.placeholderFont = AppTheme.main.fontStyle.body
        
        window = UIWindow()
        window!.makeKeyAndVisible()
        
        // Set a dummy view controller to satisfy UIKit
        window?.rootViewController = UIViewController()
        
        let rootRoutable = RootRoutable(window: window!)
        
        // Set Router
        router = Router(store: store, rootRoutable: rootRoutable) {
            $0.select {
                $0.navigationState
            }
        }
        
        // Start with splash screen (a.k.a Login screen)
        store.dispatch(ReSwiftRouter.SetRouteAction([Routes.splash]))
        
        window?.makeKeyAndVisible()
        
        return true
    }
}

