//
//  ScrollView.swift
//  SwiftUI2
//
//  Created by Yume on 2020/11/30.
//

import UIKit

// [Easier Scrolling With Layout Guides](https://useyourloaf.com/blog/easier-scrolling-with-layout-guides/)

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

extension ScrollView: UIViewBridgeable {
    public var bridge: UIScrollView {
        return view
    }
}

extension ScrollView: Container {
    var _views: [UIView] {
        return [view]
    }
}

public struct ScrollView<Content: View>: View {
    public let view: UIScrollView = UIScrollView()
    private let inner: Inner
    
    public var body: Never {
        fatalError()
    }
    
    public init(_ axis: Axis.Set = .vertical, showsIndicators: Bool = true, @ViewBuilder content: () -> Content) {
        self.inner = Inner(self.view)
        
        let scroll = self.view
        guard let stack = content()._views.first else { return }
        scroll.addSubview(stack)
        var constraints: [NSLayoutConstraint] = [
            scroll.contentAnchors.leadingAnchor.constraint(equalTo: stack.leadingAnchor),
            scroll.contentAnchors.topAnchor.constraint(equalTo: stack.topAnchor),
            scroll.contentAnchors.trailingAnchor.constraint(equalTo: stack.trailingAnchor),
            scroll.contentAnchors.bottomAnchor.constraint(equalTo: stack.bottomAnchor),
        ]
        switch axis {
        case .vertical:
            scroll.showsVerticalScrollIndicator = showsIndicators
            scroll.showsHorizontalScrollIndicator = false
//            if #available(iOS 11.0, *) {
                constraints.append(scroll.contentAnchors.widthAnchor.constraint(equalTo: scroll.frameAnchors.widthAnchor))
//            } else {
//                constraints.append(scroll.contentAnchors.widthAnchor.constraint(equalTo: stack.widthAnchor))
//            }
        case .horizontal:
            scroll.showsVerticalScrollIndicator = false
            scroll.showsHorizontalScrollIndicator = showsIndicators
//            if #available(iOS 11.0, *) {
                constraints.append(scroll.contentAnchors.heightAnchor.constraint(equalTo: scroll.frameAnchors.heightAnchor))
//            } else {
//                constraints.append(scroll.contentAnchors.heightAnchor.constraint(equalTo: stack.heightAnchor))
//            }
        }
        NSLayoutConstraint.activate(constraints)
        
        self.setupKeyboardNotifications()
    }
    
    private func setupKeyboardNotifications() {
        self.inner.setupKeyboardNotifications()
    }
}

extension ScrollView {
    private final class Inner {
        private weak var view: UIScrollView?
        fileprivate init(_ view: UIScrollView) {
            self.view = view
        }
        
        public func setupKeyboardNotifications() {
            NotificationCenter.default.addObserver(self, selector: #selector(handleKeyboardShow), name: UIResponder.keyboardWillShowNotification, object: nil)
            NotificationCenter.default.addObserver(self, selector: #selector(handleKeyboardHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        }
        
        @objc private func handleKeyboardShow(notification: Notification) {
            guard let value: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue else { return }
            let keyboardFrame: CGRect = value.cgRectValue


            self.view?.contentInset.bottom = keyboardFrame.height
            self.view?.scrollIndicatorInsets.bottom = keyboardFrame.height
        }

        @objc private func handleKeyboardHide() {
            self.view?.contentInset.bottom = 0
            self.view?.scrollIndicatorInsets.bottom = 0
        }
    }
}
