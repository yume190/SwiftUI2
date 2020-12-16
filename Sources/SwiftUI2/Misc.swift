//
//  File.swift
//  
//
//  Created by Yume on 2020/12/11.
//

#if DEBUG
import UIKit
import SwiftUI

@available(iOS 13.0, *)
public struct UIKitBrigdeView<Origin: UIView>: UIViewRepresentable {
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
