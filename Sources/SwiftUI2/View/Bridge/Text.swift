//
//  Text.swift
//  SwiftUI2
//
//  Created by Yume on 2020/11/30.
//

import class UIKit.UILabel
import class UIKit.UIFont

public typealias Text = BaseView<UILabel>
public extension Text {
    
    @inlinable
    init(_ text: String) {
        self.view.text = text
    }
    
    @inlinable
    func font(_ font: UIFont?) -> Text {
        self.view.font = font
        return self
    }
//    public func foregroundColor(_ color: Color?) -> Text
//    public func font(_ font: Font?) -> Text
}
