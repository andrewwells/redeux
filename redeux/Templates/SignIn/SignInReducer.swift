//
//  SignInReducer.swift
//  redeux
//
//  Created by Andrew Wells on 8/26/18.
//  Copyright © 2018 Andrew Wells. All rights reserved.
//

import ReSwift

func signInReducer(action: Action, state: SignInState?) -> SignInState {
    let state = state ?? SignInState()
    
    switch action {
    case let action as SignInActionUpdateUsername:
        return state.username(action.text)
    case let action as SignInActionUpdatePassword:
        return state.password(action.text)
    default:
        return state
    }
}
