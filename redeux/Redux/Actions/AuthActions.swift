//
//  AuthActions.swift
//  redeux
//
//  Created by Andrew Wells on 8/26/18.
//  Copyright © 2018 Andrew Wells. All rights reserved.
//

import ReSwift
import ReSwiftRouter
import RxSwift

extension AuthState {
    public static func authenticateSession() -> Store<AppState>.ActionCreator {
        return { state, store in
            
//            if let lastSession = LoginProvider.getLastSession() {
//                store.dispatch(LoadAuthAction(session: lastSession))
//                store.dispatch(ReSwiftRouter.SetRouteAction([RouteNames.search]))
//                return nil
//            }
            
//            LoginProvider.loginWithTwitter(completion: { session, error in
//                if error != nil {
//                    store.dispatch(ErrorAuthAction(error: error! as NSError))
//                } else if session != nil {
//                    store.dispatch(LoadAuthAction(session: session!))
//                    store.dispatch(ReSwiftRouter.SetRouteAction([RouteNames.search]))
//                }
//            })
            
            // Request Session From SessionProvider
            // If session, call get user to make sure all is well
            
            // If no session, send to signout
            _ = Observable<Int>.timer(2, scheduler: MainScheduler.asyncInstance)
                .take(1)
                .do(onNext: { _ in
                    // store.dispatch(LoadAuthAction(session: session!))
                    store.dispatch(ReSwiftRouter.SetRouteAction([Routes.signin]))
                })
                .subscribe()
            
            return nil
        }
    }
}
