//
//  _IView.swift
//  
//
//  Created by Yume on 2020/12/7.
//

import UIKit

public protocol Frameable {
    var _view: UIView { get }
//    var widthConstraint: NSLayoutConstraint { get }
//    var heightConstraint: NSLayoutConstraint { get }
}

extension View where Self: Frameable {
    public func frame(width: CGFloat? = nil, height: CGFloat? = nil, alignment: Alignment = .center) -> Self {
        if let _width = width {
            self._view.widthAnchor.constraint(equalToConstant: _width).isActive = true
        }
        
        if let _height = height {
            self._view.heightAnchor.constraint(equalToConstant: _height).isActive = true
        }
        return self
    }
}

public enum Alignment: Equatable {
    case center
}
