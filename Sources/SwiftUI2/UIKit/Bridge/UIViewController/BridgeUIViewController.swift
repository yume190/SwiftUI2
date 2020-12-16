//
//  BridgeUIViewController.swift
//  
//
//  Created by Yume on 2020/12/16.
//

#if targetEnvironment(simulator)
import class UIKit.UIViewController
import protocol SwiftUI.UIViewControllerRepresentable

@available(iOS 13.0, *)
public struct BridgeUIViewController<Origin: UIViewController>: UIViewControllerRepresentable {
    
    public let origin: Origin
    @inlinable
    public init(_ origin: Origin) {
        self.origin = origin
    }
    
    public func makeUIViewController(context: Context) -> Origin {
        return origin
    }
    
    public func updateUIViewController(_ uiViewController: Origin, context: Context) {
        
    }
}
#endif
