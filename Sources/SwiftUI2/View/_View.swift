//
//  SwiftUI2.swift
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

extension _View: _IView {
    var _view: UIView {
        return view
    }
}
