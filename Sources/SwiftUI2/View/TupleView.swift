//
//  TupleView.swift
//  SwiftUI2
//
//  Created by Yume on 2020/11/27.
//

import UIKit
import SwiftUI

@frozen public struct TupleView<T> : View {

    public var body: Never {
        fatalError()
    }

    public var value: T

    @inlinable public init(_ value: T) {
        self.value = value
    }
}
 
extension TupleView {
    /// build 2
    func visit<C0: View, C1: View>() -> [UIView] where T == (C0, C1) {
        return [
            self.value.0.ui,
            self.value.1.ui
        ].compactMap(self.returnSelf)
    }
    
    /// build 3
    func visit<C0: View, C1: View, C2: View>() -> [UIView] where T == (C0, C1, C2) {
        return [
            self.value.0.ui,
            self.value.1.ui,
            self.value.2.ui
        ].compactMap(self.returnSelf)
    }

    /// build 4
    func visit<C0: View, C1: View, C2: View, C3: View>() -> [UIView] where T == (C0, C1, C2, C3) {
        return [
            self.value.0.ui,
            self.value.1.ui,
            self.value.2.ui,
            self.value.3.ui
        ].compactMap(self.returnSelf)
    }

    /// build 5
    func visit<C0: View, C1: View, C2: View, C3: View, C4: View>() -> [UIView] where T == (C0, C1, C2, C3, C4) {
        return [
            self.value.0.ui,
            self.value.1.ui,
            self.value.2.ui,
            self.value.3.ui,
            self.value.4.ui
        ].compactMap(self.returnSelf)
    }

    /// build 6
    func visit<C0: View, C1: View, C2: View, C3: View, C4: View, C5: View>() -> [UIView] where T == (C0, C1, C2, C3, C4, C5) {
        return [
            self.value.0.ui,
            self.value.1.ui,
            self.value.2.ui,
            self.value.3.ui,
            self.value.4.ui,
            self.value.5.ui
        ].compactMap(self.returnSelf)
    }

    /// build 7
    func visit<C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View>() -> [UIView] where T == (C0, C1, C2, C3, C4, C5, C6) {
        return [
            self.value.0.ui,
            self.value.1.ui,
            self.value.2.ui,
            self.value.3.ui,
            self.value.4.ui,
            self.value.5.ui,
            self.value.6.ui
        ].compactMap(self.returnSelf)
    }

    /// build 8
    func visit<C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View>() -> [UIView] where T == (C0, C1, C2, C3, C4, C5, C6, C7) {
        return [
            self.value.0.ui,
            self.value.1.ui,
            self.value.2.ui,
            self.value.3.ui,
            self.value.4.ui,
            self.value.5.ui,
            self.value.6.ui,
            self.value.7.ui
        ].compactMap(self.returnSelf)
    }

    /// build 9
    func visit<C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View, C8: View>() -> [UIView] where T == (C0, C1, C2, C3, C4, C5, C6, C7, C8) {
        return [
            self.value.0.ui,
            self.value.1.ui,
            self.value.2.ui,
            self.value.3.ui,
            self.value.4.ui,
            self.value.5.ui,
            self.value.6.ui,
            self.value.7.ui,
            self.value.8.ui
        ].compactMap(self.returnSelf)
    }

    /// build 10
    func visit<C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View, C8: View, C9: View>() -> [UIView] where T == (C0, C1, C2, C3, C4, C5, C6, C7, C8, C9) {
        return [
            self.value.0.ui,
            self.value.1.ui,
            self.value.2.ui,
            self.value.3.ui,
            self.value.4.ui,
            self.value.5.ui,
            self.value.6.ui,
            self.value.7.ui,
            self.value.8.ui,
            self.value.9.ui
        ].compactMap(self.returnSelf)
    }
    
    private func returnSelf(_ view: UIView?) -> UIView? {
        return view
    }
}
