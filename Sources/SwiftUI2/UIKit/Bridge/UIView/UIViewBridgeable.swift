//
//  UIViewBridgeable.swift
//  
//
//  Created by Yume on 2020/12/14.
//

import class UIKit.UIView

public protocol UIViewBridgeable {
    associatedtype Bridge: UIView
    var bridge: Bridge { get }
}

#if targetEnvironment(simulator)
extension UIViewBridgeable {
    @available(iOS 13.0, *)
    public var brigdeView: BridgeUIView<Self.Bridge> {
        return BridgeUIView(self.bridge)
    }
}

extension View where Self.Body: UIViewBridgeable {
    @available(iOS 13.0, *)
    public var brigdeView: BridgeUIView<Self.Body.Bridge> {
        return self.body.brigdeView
    }
}
#endif
