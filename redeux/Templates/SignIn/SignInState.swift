//
//  SignInState.swift
//  redeux
//
//  Created by Andrew Wells on 8/26/18.
//  Copyright © 2018 Andrew Wells. All rights reserved.
//

import ReSwift

struct SignInState: Encodable, StateType {
    let username: String?
    let password: String?
    
    init(username: String? = nil, password: String? = nil) {
        self.username = username
        self.password = password
    }
    
    func username(_ username: String) -> SignInState {
        return SignInState(username: username, password: password)
    }
    
    func password(_ password: String) -> SignInState {
        return SignInState(username: username, password: password)
    }
    
}

struct SignInActionUpdateUsername: Action {
    let text: String
}

struct SignInActionUpdatePassword: Action {
    let text: String
}
