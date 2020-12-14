//
//  UIView.swift
//  
//
//  Created by Yume on 2020/12/7.
//

import UIKit

extension View where Self: UIView {
    public var body: Never {
        fatalError()
    }
}

extension UIView: View {
    public typealias Body = Never
}

extension UIView: UIKitBridgeable {
    public var bridge: UIView {
        return self
    }
}

extension UIView: Container {
    public var _views: [UIView] {
        return [self]
    }
}
