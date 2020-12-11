//
//  File.swift
//  
//
//  Created by Yume on 2020/12/11.
//

import UIKit

public enum VerticalAlignment {
    /// A guide marking the top edge of the view.
    case top

    /// A guide marking the vertical center of the view.
    case center

    /// A guide marking the bottom edge of the view.
    case bottom

    /// A guide marking the topmost text baseline view.
    case firstTextBaseline

    /// A guide marking the bottom-most text baseline in a view.
    case lastTextBaseline
    
    internal var origin: UIStackView.Alignment {
        switch self {
        case .top: return .top
        case .center: return .center
        case .bottom: return .bottom
        case .firstTextBaseline: return .firstBaseline
        case .lastTextBaseline: return .lastBaseline
        }
    }
}
