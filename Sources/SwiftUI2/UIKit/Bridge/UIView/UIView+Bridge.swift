//
//  UIView+Bridge.swift
//  
//
//  Created by Yume on 2020/12/16.
//

#if targetEnvironment(simulator)
import class UIKit.UIView

public protocol _BridgeUIView {}
extension _BridgeUIView where Self: UIView {
    @available(iOS 13.0, *)
    public var brigdeView: BridgeUIView<Self> {
        return BridgeUIView(self)
    }
    
}
extension UIView: _BridgeUIView {}
#endif
