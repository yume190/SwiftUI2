//
//  Frameable.swift
//  
//
//  Created by Yume on 2020/12/7.
//

import CoreGraphics

public protocol Frameable: UIViewBridgeable {
//    var _view: UIView { get }
//    var widthConstraint: NSLayoutConstraint { get }
//    var heightConstraint: NSLayoutConstraint { get }
}

extension View where Self: Frameable {
    @discardableResult
    @inlinable
    public func frame(width: CGFloat? = nil, height: CGFloat? = nil) -> Self {
        if let _width = width {
            self.bridge.widthAnchor.constraint(equalToConstant: _width).isActive = true
        }
        
        if let _height = height {
            self.bridge.heightAnchor.constraint(equalToConstant: _height).isActive = true
        }
        return self
    }
}
