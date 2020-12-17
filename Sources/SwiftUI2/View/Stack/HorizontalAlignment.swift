//
//  File.swift
//  
//
//  Created by Yume on 2020/12/11.
//

import UIKit

public enum HorizontalAlignment {
    /// A guide marking the leading edge of the view.
    case leading

    /// A guide marking the horizontal center of the view.
    case center

    /// A guide marking the trailing edge of the view.
    case trailing
    
    case fill
    
    internal var origin: UIStackView.Alignment {
        switch self {
        case .leading: return .leading
        case .center: return .center
        case .trailing: return .trailing
        case .fill: return .fill
        }
    }
}
