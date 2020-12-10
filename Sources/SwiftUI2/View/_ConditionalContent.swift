//
//  File.swift
//  
//
//  Created by Yume on 2020/12/10.
//

import UIKit

public enum _ConditionalContent<TrueContent: View, FalseContent: View>: View {
    case trueContent(TrueContent)
    case falseContent(FalseContent)
    
    public typealias Body = Never
//    public let _storage: Storage
    
//    init(storage: Storage) {
//        _storage = storage
//    }
    public var body: Never {
        fatalError()
    }
}

extension _ConditionalContent: _IView {
    public var _view: UIView? {
        switch self {
        case .trueContent(let view):
            return view.ui
        case .falseContent(let view):
            return view.ui
        }
    }
}
