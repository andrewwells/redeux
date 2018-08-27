//
//  AppReducer.swift
//  redeux
//
//  Created by Andrew Wells on 8/26/18.
//  Copyright © 2018 Andrew Wells. All rights reserved.
//

import ReSwift
import ReSwiftRouter

func appReducer(action: Action, state: AppState?) -> AppState {
    return AppState(
        // authState: authReducer(action: action, state: state?.authState),
        signInState: signInReducer(action: action, state: state?.signInState),
        navigationState: NavigationReducer.handleAction(action, state: state?.navigationState)
    )
}
