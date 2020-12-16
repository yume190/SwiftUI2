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

#if DEBUG
public protocol _BridgeUIView {}
extension _BridgeUIView where Self: UIView {
    @available(iOS 13.0, *)
    public var brigdeView: UIKitBrigdeView<Self> {
        return UIKitBrigdeView(self)
    }
    
}
extension UIView: _BridgeUIView {}
#endif

extension UIView: Container {
    public var _views: [UIView] {
        return [self]
    }
}
