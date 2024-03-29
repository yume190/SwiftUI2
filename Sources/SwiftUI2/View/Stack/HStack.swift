//
//  Stack.swift
//  SwiftUI2
//
//  Created by Yume on 2020/11/30.
//

import UIKit

/// Wraped UIStackView(H)
///
/// some summery...
///
/// ```swift
/// HStack(alignment: .fill, spacing: 0) {
///     UILabel()
///     VStack {
///         Text("abc")
///     }
/// }
/// ```
public struct HStack<Content: View>: View {
    public var body: Never {
        fatalError()
    }

    public let view: UIStackView
    public let content: Content
    
    /// HStack Init
    /// - Parameters:
    ///   - alignment: ``VerticalAlignment``
    ///   - spacing: spacing between views
    ///   - viewBuilder: ``ViewBuilder``
    public init(alignment: VerticalAlignment = .center, spacing: CGFloat = 0, @ViewBuilder viewBuilder: () -> Content) {
        self.content = viewBuilder()
        if #available(iOS 14, *) {
            self.view = UIStackView(arrangedSubviews: self.content._views)
        } else {
            self.view = LayerStackView(arrangedSubviews: self.content._views)
        }
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

extension HStack: UIViewBridgeable {
    public var bridge: UIStackView {
        return view
    }
}

extension HStack: Container {
    var _views: [UIView] {
        return [view]
    }
}
