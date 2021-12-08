//
//  Builder.swift
//
//
//  Created by Yume on 2020/12/7.
//

public protocol Builder: AnyObject {
    associatedtype Target: Builder

    @discardableResult
    @inlinable
    func build(_ builder: (Target) -> ()) -> Target
}

public extension Builder {
    @discardableResult
    @inlinable
    func build(_ builder: (Self) -> ()) -> Self {
        builder(self)
        return self
    }
}
