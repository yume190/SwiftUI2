//
//  ScrollView.swift
//  SwiftUI2
//
//  Created by Yume on 2020/11/30.
//

import UIKit

#warning("TODO layout")
public enum Axis {
    public enum Set {
        case horizontal
        case vertical
    }
}

protocol Anchors {
    var leadingAnchor: NSLayoutXAxisAnchor { get }
    var trailingAnchor: NSLayoutXAxisAnchor { get }
    var leftAnchor: NSLayoutXAxisAnchor { get }
    var rightAnchor: NSLayoutXAxisAnchor { get }
    var topAnchor: NSLayoutYAxisAnchor { get }
    var bottomAnchor: NSLayoutYAxisAnchor { get }
    var widthAnchor: NSLayoutDimension { get }
    var heightAnchor: NSLayoutDimension { get }
    var centerXAnchor: NSLayoutXAxisAnchor { get }
    var centerYAnchor: NSLayoutYAxisAnchor { get }
}

extension UIScrollView: Anchors {}
extension UILayoutGuide: Anchors {}

extension UIScrollView {
    var frameAnchors: Anchors {
        if #available(iOS 11.0, *) {
            return self.frameLayoutGuide
        }
        return self
    }
    
    var contentAnchors: Anchors {
        if #available(iOS 11.0, *) {
            return self.contentLayoutGuide
        }
        return self
    }
}
extension ScrollView: _IView {
    public var _view: UIView {
        return view
    }
}
public struct ScrollView<Content: View>: View {
    public let view: UIScrollView = UIScrollView()
    public var body: Never {
        fatalError()
    }
    public init(_ axes: Axis.Set = .vertical, showsIndicators: Bool = true, @ViewBuilder content: () -> Content) {
        self.view.translatesAutoresizingMaskIntoConstraints = false
        let scroll = self.view
        guard let stack = content().ui else { return }
        scroll.addSubview(stack)
        var constraints: [NSLayoutConstraint] = [
            scroll.contentAnchors.leadingAnchor.constraint(equalTo: stack.leadingAnchor),
            scroll.contentAnchors.topAnchor.constraint(equalTo: stack.topAnchor),
            scroll.contentAnchors.trailingAnchor.constraint(equalTo: stack.trailingAnchor),
            scroll.contentAnchors.bottomAnchor.constraint(equalTo: stack.bottomAnchor),
        ]
        switch axes {
        case .vertical:
            scroll.showsVerticalScrollIndicator = showsIndicators
            scroll.showsHorizontalScrollIndicator = false
            constraints.append(scroll.contentAnchors.widthAnchor.constraint(equalTo: stack.widthAnchor))
        case .horizontal:
            scroll.showsVerticalScrollIndicator = false
            scroll.showsHorizontalScrollIndicator = showsIndicators
            constraints.append(scroll.contentAnchors.heightAnchor.constraint(equalTo: stack.heightAnchor))
        }
        NSLayoutConstraint.activate(constraints)
    }
}
