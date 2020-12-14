//
//  File.swift
//  
//
//  Created by Yume on 2020/12/11.
//

import UIKit

extension Optional: View where Wrapped: View {
    public var body: Never {
        fatalError()
    }
}

extension Optional: Container where Wrapped: View {
    var _views: [UIView] {
        switch self {
        case .some(let view):
            return view._views
        case .none:
            return []
        }
    }
}
