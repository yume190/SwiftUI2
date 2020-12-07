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
    public var _view: UIView {
        return view
    }
}

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

public struct HStack<Content: View>: View {
    public var body: Never {
        fatalError()
    }

    public let view: UIStackView
    
    public init(alignment: VerticalAlignment = .center, spacing: CGFloat = 0, @ViewBuilder viewBuilder: () -> Content) {
        self.view = build(viewBuilder)
        self.view.translatesAutoresizingMaskIntoConstraints = false
        self.view.axis = .horizontal
        self.view.alignment = alignment.origin
        self.view.spacing = spacing
    }
    
    public func distribution(_ distribution: UIStackView.Distribution) -> Self {
        self.view.distribution = distribution
        return self
    }
}

extension VStack: _IView {
    public var _view: UIView {
        return view
    }
}

public enum HorizontalAlignment {
    /// A guide marking the leading edge of the view.
    case leading

    /// A guide marking the horizontal center of the view.
    case center

    /// A guide marking the trailing edge of the view.
    case trailing
    
    internal var origin: UIStackView.Alignment {
        switch self {
        case .leading: return .leading
        case .center: return .center
        case .trailing: return .trailing
        }
    }
}

public struct VStack<Content: View>: View {
    public var body: Never {
        fatalError()
    }

    public let view: UIStackView
    public init(alignment: HorizontalAlignment = .center, spacing: CGFloat = 0, @ViewBuilder viewBuilder: () -> Content) {
        self.view = build(viewBuilder)
        self.view.translatesAutoresizingMaskIntoConstraints = false
        self.view.axis = .vertical
        self.view.alignment = alignment.origin
        self.view.spacing = spacing
    }
    
    public func distribution(_ distribution: UIStackView.Distribution) -> Self {
        self.view.distribution = distribution
        return self
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
