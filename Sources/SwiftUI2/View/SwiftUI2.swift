//
//  SwiftUI2.swift
//  POC_IOS
//
//  Created by Yume on 2020/11/27.
//


//#if canImport(SwiftUI)
//import SwiftUI
//#else
import UIKit

extension UIView: View {
    public var body: UIView {
        self
    }
}

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

//#endif

