//
//  UIViewController+Bridge.swift
//  
//
//  Created by Yume on 2020/12/16.
//


#if targetEnvironment(simulator)
import class UIKit.UIViewController

public protocol UIViewControlloerPreviewable {}
extension UIViewControlloerPreviewable where Self: UIViewController {
    @available(iOS 13.0, *)
    public var preview: Preview_UIViewController<Self> {
        return Preview_UIViewController(self)
    }
    
}
extension UIViewController: UIViewControlloerPreviewable {}
#endif
