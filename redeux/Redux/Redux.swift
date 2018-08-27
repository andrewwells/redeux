//
//  Redux.swift
//  redeux
//
//  Created by Andrew Wells on 8/26/18.
//  Copyright © 2018 Andrew Wells. All rights reserved.
//

import ReSwift

var store: Store<AppState> = Store<AppState>(reducer: appReducer, state: nil)
