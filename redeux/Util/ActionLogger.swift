//
//  ActionLogger.swift
//  redeux
//
//  Created by Andrew Wells on 8/26/18.
//  Copyright © 2018 Andrew Wells. All rights reserved.
//

import ReSwift
import Toolbelt

public func ActionLogger<S>() -> Middleware<S> {
    return { dispatch, getState in
        return { next in
            return { action in
                Log.d("Action: \(action)")
                return next(action)
            }
        }
    }
}
