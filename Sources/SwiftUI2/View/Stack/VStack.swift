//
//  File.swift
//  
//
//  Created by Yume on 2020/12/11.
//

import UIKit

public struct VStack<Content: View>: View {
    public var body: Never {
        fatalError()
    }

    public let view: UIStackView
    public let content: Content
    public init(alignment: HorizontalAlignment = .center, spacing: CGFloat = 0, @ViewBuilder viewBuilder: () -> Content) {
        self.content = viewBuilder()
        self.view = UIStackView(arrangedSubviews: self.content._views)
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

extension VStack: UIViewBridgeable {
    public var bridge: UIStackView {
        return view
    }
}

extension VStack: Container {
    var _views: [UIView] {
        return [view]
    }
}

