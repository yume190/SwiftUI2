//
//  InitBuilder.swift
//  
//
//  Created by Yume on 2021/12/8.
//

public protocol InitBuilder: Builder {
    init()

    @discardableResult
    @inlinable
    static func build(_ builder: (Target) -> ()) -> Target
}

public extension InitBuilder {
    @discardableResult
    @inlinable
    static func build(_ builder: (Self) -> ()) -> Self {
        return Self().build(builder)
    }
}
