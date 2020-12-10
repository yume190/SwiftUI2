//
//  View.swift
//  SwiftUI2
//
//  Created by Yume on 2020/11/27.
//

import UIKit

public protocol View {
    associatedtype Body: View
    
    @ViewBuilder var body: Self.Body { get }
}

extension View {
    var ui: UIView? {
        
        if let i = self as? _IView {
            return i._view
        }
        
        guard !(self.body is Never) else { return nil }
        return self.body.ui
    }
}
