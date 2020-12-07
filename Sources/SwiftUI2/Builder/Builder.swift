//
//  File.swift
//  
//
//  Created by Yume on 2020/12/7.
//

import UIKit

protocol Builder: AnyObject {
    associatedtype Target: Builder
    init()
    
    @discardableResult
    static func build(_ builder: (Target) -> ()) -> Target
    
    @discardableResult
    func build(_ builder: (Target) -> ()) -> Target
}

extension Builder {
    @discardableResult
    static func build(_ builder: (Self) -> ()) -> Self {
        return Self().build(builder)
    }
    
    @discardableResult
    func build(_ builder: (Self) -> ()) -> Self {
        builder(self)
        return self
    }
}

extension UIView: Builder {}
