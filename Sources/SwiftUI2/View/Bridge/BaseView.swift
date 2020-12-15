//
//  BaseView.swift
//  POC_IOS
//
//  Created by Yume on 2020/11/27.
//

import UIKit

public struct BaseView<V: UIView>: View {
    public let view: V = .init()
    
    public var body: Never {
        fatalError()
    }
}

extension BaseView: UIKitBridgeable {
    public var bridge: V {
        return view
    }
}

extension BaseView: Container {
    var _views: [UIView] {
        return [view]
    }
}
