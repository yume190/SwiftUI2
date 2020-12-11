//
//  File.swift
//  
//
//  Created by Yume on 2020/12/11.
//

import UIKit

public protocol Stack {
    var view: UIStackView { get }
}

extension VStack: Stack {}
extension HStack: Stack {}

extension Stack {
    @discardableResult
    public func padding(_ margins: UIEdgeInsets = .zero) -> Self {
        self.view.layoutMargins = margins
        self.view.isLayoutMarginsRelativeArrangement = true
        return self
    }
    
    @discardableResult
    public func padLeft(_ left: CGFloat) -> Self {
        self.view.isLayoutMarginsRelativeArrangement = true
        self.view.layoutMargins.left = left
        return self
    }
    
    @discardableResult
    public func padTop(_ top: CGFloat) -> Self {
        self.view.isLayoutMarginsRelativeArrangement = true
        self.view.layoutMargins.top = top
        return self
    }
    
    @discardableResult
    public func padBottom(_ bottom: CGFloat) -> Self {
        self.view.isLayoutMarginsRelativeArrangement = true
        self.view.layoutMargins.bottom = bottom
        return self
    }
    
    @discardableResult
    public func padRight(_ right: CGFloat) -> Self {
        self.view.isLayoutMarginsRelativeArrangement = true
        self.view.layoutMargins.right = right
        return self
    }
}


