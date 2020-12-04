//
//  Stack.swift
//  SwiftUI2
//
//  Created by Yume on 2020/11/30.
//

import UIKit

public protocol Stack {
    var view: UIStackView { get }
}

extension HStack: _IView {
    var _view: UIView {
        return view
    }
}

public struct HStack<Content: View>: View {
    public var body: Never {
        fatalError()
    }

    public let view: UIStackView
    
    public init(alignment: UIStackView.Alignment = .center, spacing: CGFloat = 0, @ViewBuilder viewBuilder: () -> Content) {
        self.view = build(viewBuilder)
        self.view.translatesAutoresizingMaskIntoConstraints = false
        self.view.axis = .horizontal
        self.view.alignment = alignment
        self.view.spacing = spacing
    }
}

extension VStack: _IView {
    var _view: UIView {
        return view
    }
}
public struct VStack<Content: View>: View {
    public var body: Never {
        fatalError()
    }

    public let view: UIStackView
    public init(alignment: UIStackView.Alignment = .center, spacing: CGFloat = 0, @ViewBuilder viewBuilder: () -> Content) {
        self.view = build(viewBuilder)
        self.view.translatesAutoresizingMaskIntoConstraints = false
        self.view.axis = .vertical
        self.view.alignment = alignment
        self.view.spacing = spacing
    }
}

extension Stack {
    @discardableResult
    public func padding(_ margins: UIEdgeInsets = .zero) -> Self {
        self.view.layoutMargins = margins
        self.view.isLayoutMarginsRelativeArrangement = true
        return self
    }
    
    @discardableResult
    public func padLeft(_ left: CGFloat) -> Self {
        self.view.isLayoutMarginsRelativeArrangement = true
        self.view.layoutMargins.left = left
        return self
    }
    
    @discardableResult
    public func padTop(_ top: CGFloat) -> Self {
        self.view.isLayoutMarginsRelativeArrangement = true
        self.view.layoutMargins.top = top
        return self
    }
    
    @discardableResult
    public func padBottom(_ bottom: CGFloat) -> Self {
        self.view.isLayoutMarginsRelativeArrangement = true
        self.view.layoutMargins.bottom = bottom
        return self
    }
    
    @discardableResult
    public func padRight(_ right: CGFloat) -> Self {
        self.view.isLayoutMarginsRelativeArrangement = true
        self.view.layoutMargins.right = right
        return self
    }
}

extension VStack: Stack {}
extension HStack: Stack {}


fileprivate func build<Content: View>(_ viewBuilder: () -> Content) -> UIStackView {
    let content = viewBuilder().body
    if let _view = content as? UIView {
        return UIStackView(arrangedSubviews: [_view])
    } else if let _views = content as? [UIView] {
        return UIStackView(arrangedSubviews: _views)
    } else {
        return UIStackView()
    }
}
