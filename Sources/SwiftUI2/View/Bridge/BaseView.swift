//
//  BaseView.swift
//  POC_IOS
//
//  Created by Yume on 2020/11/27.
//

import class UIKit.UIView

public struct BaseView<V: UIView>: View {
    public let view: V = {
        let view = V()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    public var body: Never {
        fatalError()
    }
}

extension BaseView: UIViewBridgeable {
    public var bridge: V {
        return view
    }
}

extension BaseView: Container {
    var _views: [UIView] {
        return [view]
    }
}
