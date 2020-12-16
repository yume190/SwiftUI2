//
//  UIViewController+Bridge.swift
//  
//
//  Created by Yume on 2020/12/16.
//


#if targetEnvironment(simulator)
import class UIKit.UIViewController

public protocol _BridgeUIViewController {}
extension _BridgeUIViewController where Self: UIViewController {
    @available(iOS 13.0, *)
    public var brigdeView: BridgeUIViewController<Self> {
        return BridgeUIViewController(self)
    }
    
}
extension UIViewController: _BridgeUIViewController {}
#endif
