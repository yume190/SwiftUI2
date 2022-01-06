//
//  Array+UIView.swift
//  SwiftUI2
//
//  Created by Yume on 2020/11/27.
//

import UIKit

extension Array: View where Element: UIView {
    public var body: Never {
        fatalError()
    }
}

extension Array: Container where Element: UIView {
    var _views: [UIView] {
        return self
    }
}
