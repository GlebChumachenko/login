//
//  Dynamic.swift
//  loginTest
//
//  Created by Gleb Chumachenko on 24.04.23.
//

import Foundation

class Dynamic <T> {
    typealias Listener = (T) -> Void
    private var listener: Listener?
    
    func bind(listener: Listener?) {
        self.listener = listener
    }
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    init(_ v: T) {
        value = v
    }
}
