//
//  ViewBuilder.swift
//  SwiftUI2
//
//  Created by Yume on 2020/11/27.
//

import UIKit

#if swift(>=5.4)
@resultBuilder
public enum ViewBuilder {}
#else
@_functionBuilder
public enum ViewBuilder {}
#endif

extension ViewBuilder {
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
    
    public static func buildIf<Content>(_ content: Content?) -> Content? where Content : View {
        return content
    }
    
    //public static func buildLimitedAvailability<Content>(_ content: Content) -> AnyView where Content : View
    
    
    
//    public static func buildExpression(_ expression: Int) -> Spacer {
//        return Spacer(minLength: CGFloat(expression))
//    }
//
//    public static func buildExpression(_ expression: Float) -> Spacer {
//        return Spacer(minLength: CGFloat(expression))
//    }
//
//    public static func buildExpression(_ expression: Double) -> Spacer {
//        return Spacer(minLength: CGFloat(expression))
//    }
//
//    public static func buildExpression(_ expression: CGFloat) -> Spacer {
//        return Spacer(minLength: expression)
//    }
//
//    public static func buildExpression(_ expression: Never) -> Never {
//
//    }
//
//    public static func buildExpression<Content: View>(_ expression: Content) -> Content {
//        return expression
//    }
//
//    public static func buildExpression<Content: View>(_ expression: Content?) -> Content? {
//        return expression
//    }
}

extension ViewBuilder {
    
    public static func buildBlock<C0, C1>(_ c0: C0, _ c1: C1) -> TupleView2<C0, C1> where C0: View, C1: View {
        return .init(c0, c1)
    }
    
    public static func buildBlock<C0, C1, C2>(_ c0: C0, _ c1: C1, _ c2: C2) -> TupleView3<C0, C1, C2> where C0: View, C1: View, C2: View {
        return .init(c0, c1, c2)
    }
    
    public static func buildBlock<C0, C1, C2, C3>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3) -> TupleView4<C0, C1, C2, C3> where C0: View, C1: View, C2: View, C3: View {
        return .init(c0, c1, c2, c3)
    }
    
    public static func buildBlock<C0, C1, C2, C3, C4>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4) -> TupleView5<C0, C1, C2, C3, C4> where C0: View, C1: View, C2: View, C3: View, C4: View {
        return .init(c0, c1, c2, c3, c4)
    }
    
    public static func buildBlock<C0, C1, C2, C3, C4, C5>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5) -> TupleView6<C0, C1, C2, C3, C4, C5> where C0: View, C1: View, C2: View, C3: View, C4: View, C5: View {
        return .init(c0, c1, c2, c3, c4, c5)
    }
    
    public static func buildBlock<C0, C1, C2, C3, C4, C5, C6>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6) -> TupleView7<C0, C1, C2, C3, C4, C5, C6> where C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View {
        return .init(c0, c1, c2, c3, c4, c5, c6)
    }
    
    public static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7) -> TupleView8<C0, C1, C2, C3, C4, C5, C6, C7> where C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View {
        return .init(c0, c1, c2, c3, c4, c5, c6, c7)
    }
    
    public static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7, C8>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7, _ c8: C8) -> TupleView9<C0, C1, C2, C3, C4, C5, C6, C7, C8> where C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View, C8: View {
        return .init(c0, c1, c2, c3, c4, c5, c6, c7, c8)
    }
    
    public static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7, C8, C9>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7, _ c8: C8, _ c9: C9) -> TupleView10<C0, C1, C2, C3, C4, C5, C6, C7, C8, C9> where C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View, C8: View, C9: View {
        return .init(c0, c1, c2, c3, c4, c5, c6, c7, c8, c9)
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
