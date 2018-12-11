//
//  Configurable.swift
//  Ilya Stroganov
//
//  Created by Ilya Stroganov on 12/11/18.
//  Copyright © 2018 Ilya Stroganov. All rights reserved.
//

import Foundation

//////////////////////////////////////////////////////////////////////////////////////////////////////////////

protocol Configurable {
    associatedtype T
    func configure(_ block: (T) -> Void) -> T
}

////////////////////////

extension Configurable where Self: AnyObject {
    @discardableResult func configure(_ block: (Self) -> Void) -> Self {
        block(self)
        return self
    }
}

////////////////////////

extension NSObject: Configurable {}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////

protocol MutableConfigurable {
    associatedtype T
    func configure(_ block: (inout T) -> Void) -> T
}

////////////////////////

extension MutableConfigurable {
    @discardableResult func configure(_ block: (inout Self) -> Void) -> Self {
        var obj = self
        block(&obj)
        return obj
    }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////

