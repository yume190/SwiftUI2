//
//  Frameable+UIView.swift
//  
//
//  Created by Yume on 2020/12/17.
//

import class UIKit.UIView
import CoreGraphics

extension UIView {
    @discardableResult
    @inlinable
    public func frame(width: CGFloat? = nil, height: CGFloat? = nil, alignment: Alignment = .center) -> Self {
        if let _width = width {
            self.widthAnchor.constraint(equalToConstant: _width).isActive = true
        }
        
        if let _height = height {
            self.heightAnchor.constraint(equalToConstant: _height).isActive = true
        }
        return self
    }
}
