//
//  BridgeUIView.swift
//  
//
//  Created by Yume on 2020/12/11.
//

#if targetEnvironment(simulator)
import class UIKit.UIView
import protocol SwiftUI.UIViewRepresentable

@available(iOS 13.0, *)
public struct Preview_UIView<Origin: UIView>: UIViewRepresentable {
    public let origin: Origin
    @inlinable
    public init(_ origin: Origin) {
        self.origin = origin
    }
    
    public func makeUIView(context: Context) -> Origin {
        return origin
    }

    public func updateUIView(_ uiView: Origin, context: Context) {
    }
}
#endif
