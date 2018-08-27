//
//  AuthState.swift
//  redeux
//
//  Created by Andrew Wells on 8/26/18.
//  Copyright © 2018 Andrew Wells. All rights reserved.
//

import ReSwift

struct AuthState: StateType {
    var session: Session?
    var error: NSError?
    var signedIn: Bool { return session != nil && error == nil }
}

