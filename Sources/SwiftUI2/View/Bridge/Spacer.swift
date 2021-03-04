//
//  Spacer.swift
//  
//
//  Created by Yume on 2021/3/4.
//

import UIKit

public typealias Spacer = BaseView<UIView>
public extension Spacer {
    @inlinable init(minLength: CGFloat? = nil) {
        self.view.backgroundColor = .clear
        guard let length = minLength else { return }
        self.view.heightAnchor.constraint(equalToConstant: length).isActive = true
        self.view.widthAnchor.constraint(equalToConstant: length).isActive = true
    }
}
