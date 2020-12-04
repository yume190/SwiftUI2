//
//  View.swift
//  SwiftUI2
//
//  Created by Yume on 2020/11/27.
//

import UIKit

protocol _IView {
//    associatedtype V: UIView
//    var view: Self.V { get }
    var _view: UIView { get }
}

public protocol View {
    associatedtype Body: View
    
    @ViewBuilder var body: Self.Body { get }
}

extension View {
    var ui: UIView? {
        
        if let i = self as? _IView {
            return i._view
        }
        
        if let i = self.body as? _IView {
            return i._view
        }
        
        return nil
    }
}
