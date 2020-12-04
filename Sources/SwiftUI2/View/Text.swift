//
//  Text.swift
//  SwiftUI2
//
//  Created by Yume on 2020/11/30.
//

import UIKit

public typealias Text = _View<UILabel>
public extension Text {
    
    @inlinable
    init(_ text: String) {
        self.view.translatesAutoresizingMaskIntoConstraints = false
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
