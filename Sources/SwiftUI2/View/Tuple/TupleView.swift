////
////  TupleView.swift
////  SwiftUI2
////
////  Created by Yume on 2020/11/27.
////
//
//import UIKit
//
////@frozen
//public struct TupleView<T> : View {
//
//    public var body: Never {
//        fatalError()
//    }
//
//    public var value: T
////    lazy var views: [UIView] = self.visit()
//
//    @inlinable public init(_ value: T) {
//        self.value = value
//    }
//}
//
////extension TupleView: Container {
////    var _views: [UIView] {
////        var copy = self
////        return copy.views
////    }
////}
// 
//extension TupleView {
////    /// build 1
////    func visit() -> [UIView] where T: View {
////        return self.value._views
////    }
////
////    func visit() -> [UIView] where T == Void {
////        return []
////    }
////
////    func visit() -> [UIView] {
////        return []
////    }
//    
//    /// build 2
//    func visit<C0: View, C1: View>() -> [UIView] where T == (C0, C1) {
//        return [
//            self.value.0._views,
//            self.value.1._views
//        ].flatMap(returnSelf)
//    }
//    
//    /// build 3
//    func visit<C0: View, C1: View, C2: View>() -> [UIView] where T == (C0, C1, C2) {
//        return [
//            self.value.0._views,
//            self.value.1._views,
//            self.value.2._views
//        ].flatMap(returnSelf)
//    }
//
//    /// build 4
//    func visit<C0: View, C1: View, C2: View, C3: View>() -> [UIView] where T == (C0, C1, C2, C3) {
//        return [
//            self.value.0._views,
//            self.value.1._views,
//            self.value.2._views,
//            self.value.3._views
//        ].flatMap(returnSelf)
//    }
//
//    /// build 5
//    func visit<C0: View, C1: View, C2: View, C3: View, C4: View>() -> [UIView] where T == (C0, C1, C2, C3, C4) {
//        return [
//            self.value.0._views,
//            self.value.1._views,
//            self.value.2._views,
//            self.value.3._views,
//            self.value.4._views
//        ].flatMap(returnSelf)
//    }
//
//    /// build 6
//    func visit<C0: View, C1: View, C2: View, C3: View, C4: View, C5: View>() -> [UIView] where T == (C0, C1, C2, C3, C4, C5) {
//        return [
//            self.value.0._views,
//            self.value.1._views,
//            self.value.2._views,
//            self.value.3._views,
//            self.value.4._views,
//            self.value.5._views
//        ].flatMap(returnSelf)
//    }
//
//    /// build 7
//    func visit<C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View>() -> [UIView] where T == (C0, C1, C2, C3, C4, C5, C6) {
//        return [
//            self.value.0._views,
//            self.value.1._views,
//            self.value.2._views,
//            self.value.3._views,
//            self.value.4._views,
//            self.value.5._views,
//            self.value.6._views
//        ].flatMap(returnSelf)
//    }
//
//    /// build 8
//    func visit<C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View>() -> [UIView] where T == (C0, C1, C2, C3, C4, C5, C6, C7) {
//        return [
//            self.value.0._views,
//            self.value.1._views,
//            self.value.2._views,
//            self.value.3._views,
//            self.value.4._views,
//            self.value.5._views,
//            self.value.6._views,
//            self.value.7._views
//        ].flatMap(returnSelf)
//    }
//
//    /// build 9
//    func visit<C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View, C8: View>() -> [UIView] where T == (C0, C1, C2, C3, C4, C5, C6, C7, C8) {
//        return [
//            self.value.0._views,
//            self.value.1._views,
//            self.value.2._views,
//            self.value.3._views,
//            self.value.4._views,
//            self.value.5._views,
//            self.value.6._views,
//            self.value.7._views,
//            self.value.8._views
//        ].flatMap(returnSelf)
//    }
//
//    /// build 10
//    func visit<C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View, C8: View, C9: View>() -> [UIView] where T == (C0, C1, C2, C3, C4, C5, C6, C7, C8, C9) {
//        return [
//            self.value.0._views,
//            self.value.1._views,
//            self.value.2._views,
//            self.value.3._views,
//            self.value.4._views,
//            self.value.5._views,
//            self.value.6._views,
//            self.value.7._views,
//            self.value.8._views,
//            self.value.9._views
//        ].flatMap(returnSelf)
//    }
//    
//    private func returnSelf<T>(_ t: T) -> T {
//        return t
//    }
//}
