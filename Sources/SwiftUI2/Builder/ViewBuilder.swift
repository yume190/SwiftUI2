//
//  ViewBuilder.swift
//  SwiftUI2
//
//  Created by Yume on 2020/11/27.
//

import UIKit

//public static func buildBlock() -> EmptyView
//public static func buildIf<Content>(_ content: Content?) -> Content? where Content : View
//public static func buildEither<TrueContent, FalseContent>(first: TrueContent) -> _ConditionalContent<TrueContent, FalseContent> where TrueContent : View, FalseContent : View
//public static func buildEither<TrueContent, FalseContent>(second: FalseContent) -> _ConditionalContent<TrueContent, FalseContent> where TrueContent : View, FalseContent : View

//public static func buildLimitedAvailability<Content>(_ content: Content) -> AnyView where Content : View

//public static func buildBlock<C0, C1>(_ c0: C0, _ c1: C1) -> TupleView<(C0, C1)> where C0 : View, C1 : View
//build 2 ~ 10
@_functionBuilder
public enum ViewBuilder {
    public static func buildBlock() -> UIView {
        return UIView(frame: .zero)
    }
    
//    public static func buildBlock<Content: View>(_ content: Content) -> Content.Body {
//        return content.body
//    }
    public static func buildBlock<Content: View>(_ content: Content) -> Content {
        return content
    }
    
    public static func buildBlock<C0: View, C1: View>(_ c0: C0, _ c1: C1) -> [UIView] {
        return [c0.ui, c1.ui].compactMap(rSelf)
    }
    
    public static func buildBlock<C0: View, C1: View, C2: View>(_ c0: C0, _ c1: C1, _ c2: C2) -> [UIView] {
        return [c0.ui, c1.ui, c2.ui].compactMap(rSelf)
    }
    
    public static func buildBlock<C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View>(
        _ c0: C0,
        _ c1: C1,
        _ c2: C2,
        _ c3: C3,
        _ c4: C4,
        _ c5: C5,
        _ c6: C6,
        _ c7: C7
    ) -> [UIView] {
        return [
            c0.ui,
            c1.ui,
            c2.ui,
            c3.ui,
            c4.ui,
            c5.ui,
            c6.ui,
            c7.ui
            ].compactMap(rSelf)
    }
    
    private static func rSelf(view: UIView?) -> UIView? {
        return view
    }
    
//    public static func buildBlock(_ items: UIView?...) -> UIStackView {
//        return UIStackView(arrangedSubviews: items.compactMap { $0 })
//    }
    
//    public static func buildIf(_ value: UIView?) -> UIView? {
//        return value
//    }
//
//    public static func buildEither(first value: UIView) -> UIView {
//        return value
//    }
//
//    public static func buildEither(second value: UIView) -> UIView {
//        return value
//    }
}
