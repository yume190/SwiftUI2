//
//  File.swift
//  
//
//  Created by Yume on 2020/12/10.
//

import UIKit

@frozen
public enum _ConditionalContent<TrueContent: View, FalseContent: View>: View {
    case trueContent(TrueContent)
    case falseContent(FalseContent)
    
    public typealias Body = Never
    
    public var body: Never {
        fatalError()
    }
}

extension _ConditionalContent: Container {
    var _views: [UIView] {
        switch self {
        case .trueContent(let view):
            return view._views
        case .falseContent(let view):
            return view._views
        }
    }
}
