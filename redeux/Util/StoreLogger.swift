//
//  StoreLogger.swift
//  redeux
//
//  Created by Andrew Wells on 8/26/18.
//  Copyright © 2018 Andrew Wells. All rights reserved.
//

import ReSwift
import Toolbelt

class StoreLogger: StoreSubscriber {
    let encoder: JSONEncoder
    
    init() {
        encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
    }
    
    func newState(state: AppState) {
        do {
            let description = try encoder.encode(state)
            Log.d("State: \(String(data: description, encoding: .utf8)!)")
        } catch let e {
            Log.e("\(e)")
        }
    }
}
