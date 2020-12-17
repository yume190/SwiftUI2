//
//  Frameable.swift
//  
//
//  Created by Yume on 2020/12/7.
//

import struct CoreGraphics.CGFloat

public protocol Frameable: UIViewBridgeable {
//    var _view: UIView { get }
//    var widthConstraint: NSLayoutConstraint { get }
//    var heightConstraint: NSLayoutConstraint { get }
}

extension View where Self: Frameable {
    public func frame(width: CGFloat? = nil, height: CGFloat? = nil, alignment: Alignment = .center) -> Self {
        if let _width = width {
            self.bridge.widthAnchor.constraint(equalToConstant: _width).isActive = true
        }
        
        if let _height = height {
            self.bridge.heightAnchor.constraint(equalToConstant: _height).isActive = true
        }
        return self
    }
}

public enum Alignment: Equatable {
    case center
}
