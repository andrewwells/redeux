//
//  AppState.swift
//  redeux
//
//  Created by Andrew Wells on 8/26/18.
//  Copyright © 2018 Andrew Wells. All rights reserved.
//

import ReSwift
import ReSwiftRouter

struct AppState: Encodable, StateType {
    //let authState: AuthState
    let signInState: SignInState
    var navigationState: NavigationState
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(signInState, forKey: CodingKeys.signInState)
        // try container.encode(navigationState, forKey: CodingKeys.navigationState)
    }
    
    private enum CodingKeys: String, CodingKey {
        case signInState
        // case navigationState
    }
}

//extension AppState: Encodable {
//
//}

