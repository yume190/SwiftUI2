//
//  File.swift
//  
//
//  Created by Yume on 2020/12/14.
//

import UIKit

public protocol UIKitBridgeable {
    associatedtype Bridge: UIView
    var bridge: Bridge { get }
}

extension UIKitBridgeable {
    @available(iOS 13.0, *)
    public var brigdeView: UIKitBrigdeView<Self.Bridge> {
        return UIKitBrigdeView(self.bridge)
    }
}

extension View where Self.Body: UIKitBridgeable {
    @available(iOS 13.0, *)
    public var brigdeView: UIKitBrigdeView<Self.Body.Bridge> {
        return self.body.brigdeView
    }
}
