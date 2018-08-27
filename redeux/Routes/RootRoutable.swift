//
//  RootRoutable.swift
//  redeux
//
//  Created by Andrew Wells on 8/26/18.
//  Copyright © 2018 Andrew Wells. All rights reserved.
//

import ReSwiftRouter

// Simple Routables
class SplashViewRoutable: Routable {}
class SignInViewRoutable: Routable {}

class RootRoutable: Routable {
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func setToSplashViewController() -> Routable {
        let vc = UIViewController()
        vc.view.backgroundColor = .green
        self.window.rootViewController = vc

        return SplashViewRoutable()
    }

    func setToSignInViewController() -> Routable {
        let vc = UIViewController()
        vc.view.backgroundColor = .orange
        self.window.rootViewController = vc

        return SignInViewRoutable()
    }
    
    func changeRouteSegment(
        _ from: RouteElementIdentifier,
        to: RouteElementIdentifier,
        animated: Bool,
        completionHandler: @escaping RoutingCompletionHandler
        ) -> Routable {
        
        if to == Routes.signin {
            completionHandler()
            return setToSignInViewController()
        } else if to == Routes.splash {
            completionHandler()
            return setToSplashViewController()
        } else {
            fatalError("Route not supported!")
        }
    }
    
    func pushRouteSegment(
        _ routeElementIdentifier: RouteElementIdentifier,
        animated: Bool,
        completionHandler: @escaping RoutingCompletionHandler
        ) -> Routable {
        
        if routeElementIdentifier == Routes.signin {
            completionHandler()
            return setToSignInViewController()
        } else if routeElementIdentifier == Routes.splash {
            completionHandler()
            return setToSplashViewController()
        } else {
            fatalError("Route not supported!")
        }
    }
}
