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

extension UIView: Frameable {
    public var _view: UIView {
        return self
    }
}
