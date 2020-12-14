//
//  _View.swift
//  POC_IOS
//
//  Created by Yume on 2020/11/27.
//

import UIKit

public struct _View<V: UIView>: View {
    public let view: V = .init()
    
    public var body: Never {
        fatalError()
    }
}

extension _View: UIKitBridgeable {
    public var bridge: V {
        return view
    }
}

extension _View: Container {
    var _views: [UIView] {
        return [view]
    }
}
