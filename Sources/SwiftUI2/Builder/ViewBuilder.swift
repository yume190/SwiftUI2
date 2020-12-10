//
//  ViewBuilder.swift
//  SwiftUI2
//
//  Created by Yume on 2020/11/27.
//

import UIKit

@_functionBuilder
public enum ViewBuilder {
    /// public static func buildBlock() -> EmptyView
    public static func buildBlock() -> UIView {
        return UIView(frame: .zero)
    }
    
    public static func buildBlock<Content: View>(_ content: Content) -> Content {
        return content
    }
    
    //    public static func buildBlock(_ items: UIView?...) -> UIStackView {
    //        return UIStackView(arrangedSubviews: items.compactMap { $0 })
    //    }
    
    //public static func buildIf<Content>(_ content: Content?) -> Content? where Content : View
    //    public static func buildIf(_ value: UIView?) -> UIView? {
    //        return value
    //    }
    
    //public static func buildLimitedAvailability<Content>(_ content: Content) -> AnyView where Content : View
}

//extension ViewBuilder {
//    /// build 2
//    public static func buildBlock<C0: View, C1: View>(_ c0: C0, _ c1: C1) -> [UIView] {
//        return [c0.ui, c1.ui].compactMap(rSelf)
//    }
//    
//    /// build 3
//    public static func buildBlock<C0: View, C1: View, C2: View>(_ c0: C0, _ c1: C1, _ c2: C2) -> [UIView] {
//        return [c0.ui, c1.ui, c2.ui].compactMap(rSelf)
//    }
//    
//    /// build 4
//    public static func buildBlock<C0: View, C1: View, C2: View, C3: View>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3
//    ) -> [UIView] {
//        return [
//            c0.ui, c1.ui, c2.ui, c3.ui
//        ].compactMap(rSelf)
//    }
//    
//    /// build 5
//    public static func buildBlock<C0: View, C1: View, C2: View, C3: View, C4: View>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4
//    ) -> [UIView] {
//        return [
//            c0.ui, c1.ui, c2.ui, c3.ui, c4.ui
//        ].compactMap(rSelf)
//    }
//    
//    /// build 6
//    public static func buildBlock<C0: View, C1: View, C2: View, C3: View, C4: View, C5: View>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5
//    ) -> [UIView] {
//        return [
//            c0.ui, c1.ui, c2.ui, c3.ui, c4.ui,
//            c5.ui
//        ].compactMap(rSelf)
//    }
//    
//    /// build 7
//    public static func buildBlock<C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6
//    ) -> [UIView] {
//        return [
//            c0.ui, c1.ui, c2.ui, c3.ui, c4.ui,
//            c5.ui, c6.ui
//        ].compactMap(rSelf)
//    }
//    
//    /// build 8
//    public static func buildBlock<C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7
//    ) -> [UIView] {
//        return [
//            c0.ui, c1.ui, c2.ui, c3.ui, c4.ui,
//            c5.ui, c6.ui, c7.ui
//        ].compactMap(rSelf)
//    }
//    
//    /// build 9
//    public static func buildBlock<C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View, C8: View>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7, _ c8: C8
//    ) -> [UIView] {
//        return [
//            c0.ui, c1.ui, c2.ui, c3.ui, c4.ui,
//            c5.ui, c6.ui, c7.ui, c8.ui
//        ].compactMap(rSelf)
//    }
//    
//    /// build 10
//    public static func buildBlock<C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View, C8: View, C9: View>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7, _ c8: C8, _ c9: C9
//    ) -> [UIView] {
//        return [
//            c0.ui, c1.ui, c2.ui, c3.ui, c4.ui,
//            c5.ui, c6.ui, c7.ui, c8.ui, c9.ui
//        ].compactMap(rSelf)
//    }
//    
//    private static func rSelf(view: UIView?) -> UIView? {
//        return view
//    }
//}

extension ViewBuilder {
    
    public static func buildBlock<C0, C1>(_ c0: C0, _ c1: C1) -> TupleView<(C0, C1)> where C0: View, C1: View {
        return .init((c0, c1))
    }
    
    public static func buildBlock<C0, C1, C2>(_ c0: C0, _ c1: C1, _ c2: C2) -> TupleView<(C0, C1, C2)> where C0: View, C1: View, C2: View {
        return .init((c0, c1, c2))
    }
    
    public static func buildBlock<C0, C1, C2, C3>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3) -> TupleView<(C0, C1, C2, C3)> where C0: View, C1: View, C2: View, C3: View {
        return .init((c0, c1, c2, c3))
    }
    
    public static func buildBlock<C0, C1, C2, C3, C4>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4) -> TupleView<(C0, C1, C2, C3, C4)> where C0: View, C1: View, C2: View, C3: View, C4: View {
        return .init((c0, c1, c2, c3, c4))
    }
    
    public static func buildBlock<C0, C1, C2, C3, C4, C5>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5) -> TupleView<(C0, C1, C2, C3, C4, C5)> where C0: View, C1: View, C2: View, C3: View, C4: View, C5: View {
        return .init((c0, c1, c2, c3, c4, c5))
    }
    
    public static func buildBlock<C0, C1, C2, C3, C4, C5, C6>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6) -> TupleView<(C0, C1, C2, C3, C4, C5, C6)> where C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View {
        return .init((c0, c1, c2, c3, c4, c5, c6))
    }
    
    public static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7) -> TupleView<(C0, C1, C2, C3, C4, C5, C6, C7)> where C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View {
        return .init((c0, c1, c2, c3, c4, c5, c6, c7))
    }
    
    public static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7, C8>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7, _ c8: C8) -> TupleView<(C0, C1, C2, C3, C4, C5, C6, C7, C8)> where C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View, C8: View {
        return .init((c0, c1, c2, c3, c4, c5, c6, c7, c8))
    }
    
    public static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7, C8, C9>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7, _ c8: C8, _ c9: C9) -> TupleView<(C0, C1, C2, C3, C4, C5, C6, C7, C8, C9)> where C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View, C8: View, C9: View {
        return .init((c0, c1, c2, c3, c4, c5, c6, c7, c8, c9))
    }
}


extension ViewBuilder {
    static func buildFinalResult<C0, C1>(_ tuple: TupleView<(C0, C1)>) -> [UIView] where C0: View, C1: View {
        return tuple.visit()
    }
    
    static func buildFinalResult<C0, C1, C2>(_ tuple: TupleView<(C0, C1, C2)>) -> [UIView] where C0: View, C1: View, C2: View {
        return tuple.visit()
    }
    
    static func buildFinalResult<C0, C1, C2, C3>(_ tuple: TupleView<(C0, C1, C2, C3)>) -> [UIView] where C0: View, C1: View, C2: View, C3: View {
        return tuple.visit()
    }
    
    static func buildFinalResult<C0, C1, C2, C3, C4>(_ tuple: TupleView<(C0, C1, C2, C3, C4)>) -> [UIView] where C0: View, C1: View, C2: View, C3: View, C4: View {
        return tuple.visit()
    }
    
    static func buildFinalResult<C0, C1, C2, C3, C4, C5>(_ tuple: TupleView<(C0, C1, C2, C3, C4, C5)>) -> [UIView] where C0: View, C1: View, C2: View, C3: View, C4: View, C5: View {
        return tuple.visit()
    }
    
    static func buildFinalResult<C0, C1, C2, C3, C4, C5, C6>(_ tuple: TupleView<(C0, C1, C2, C3, C4, C5, C6)>) -> [UIView] where C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View {
        return tuple.visit()
    }
    
    static func buildFinalResult<C0, C1, C2, C3, C4, C5, C6, C7>(_ tuple: TupleView<(C0, C1, C2, C3, C4, C5, C6, C7)>) -> [UIView] where C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View {
        return tuple.visit()
    }
    
    static func buildFinalResult<C0, C1, C2, C3, C4, C5, C6, C7, C8>(_ tuple: TupleView<(C0, C1, C2, C3, C4, C5, C6, C7, C8)>) -> [UIView] where C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View, C8: View {
        return tuple.visit()
    }
    
    static func buildFinalResult<C0, C1, C2, C3, C4, C5, C6, C7, C8, C9>(_ tuple: TupleView<(C0, C1, C2, C3, C4, C5, C6, C7, C8, C9)>) -> [UIView] where C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View, C8: View, C9: View {
        return tuple.visit()
    }
    
    static func buildFinalResult<V: View>(_ view: V) -> V {
        return view
    }
}

extension ViewBuilder {
    public static func buildEither<TrueContent, FalseContent>(first: TrueContent) -> _ConditionalContent<TrueContent, FalseContent> where TrueContent : View, FalseContent : View {
        return .trueContent(first)
    }
    public static func buildEither<TrueContent, FalseContent>(second: FalseContent) -> _ConditionalContent<TrueContent, FalseContent> where TrueContent : View, FalseContent : View {
        return .falseContent(second)
    }
}
