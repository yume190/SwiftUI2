//
//  UIViewBridgeable.swift
//  
//
//  Created by Yume on 2020/12/14.
//

import UIKit

public protocol UIViewBridgeable {
    associatedtype Bridge: UIView
    var bridge: Bridge { get }
}

//#if targetEnvironment(simulator)
// extension UIViewBridgeable {
//     @available(iOS 13.0, *)
//     public var preview: Preview_UIView<Self.Bridge> {
//         return Preview_UIView(self.bridge)
//     }
// }

// extension View where Self.Body: UIViewBridgeable {
//     @available(iOS 13.0, *)
//     public var preview: Preview_UIView<Self.Body.Bridge> {
//         return self.body.preview
//     }
// }
//#endif
