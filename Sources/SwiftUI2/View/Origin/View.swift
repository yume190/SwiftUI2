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
    var _views: [UIView] {
        if let container = self as? Container {
            return container._views
        }
        
        guard !(self.body is Never) else { return [] }
        return self.body._views
    }
}
