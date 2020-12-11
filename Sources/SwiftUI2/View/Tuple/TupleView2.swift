//
//  TupleView.swift
//  SwiftWebUI
//
//  Created by Helge Heß on 05.06.19.
//  Copyright © 2019 Helge Heß. All rights reserved.
//

import UIKit

@frozen
public struct TupleView2<T1: View, T2: View>: View, Container {
    public var body: Never {
        fatalError()
    }
    public let value1 : T1
    public let value2 : T2
    public init(_ value1: T1, _ value2: T2) {
        self.value1 = value1
        self.value2 = value2
    }
    public typealias Body = Never
    
    var _views: [UIView] {
        return [
            self.value1._views,
            self.value2._views
        ].flatMap(returnSelf)
    }
}

@frozen
public struct TupleView3<T1: View, T2: View, T3: View>: View, Container {
    
    public var body: Never {
        fatalError()
    }
    
    public let value1 : T1
    public let value2 : T2
    public let value3 : T3
    public init(_ value1: T1, _ value2: T2, _ value3: T3) {
        self.value1 = value1
        self.value2 = value2
        self.value3 = value3
    }
    public typealias Body = Never
    
    var _views: [UIView] {
        return [
            self.value1._views,
            self.value2._views,
            self.value3._views
        ].flatMap(returnSelf)
    }
}

@frozen
public struct TupleView4<T1: View, T2: View, T3: View, T4: View>: View, Container {
    public var body: Never {
        fatalError()
    }
    public let value1 : T1
    public let value2 : T2
    public let value3 : T3
    public let value4 : T4
    public init(_ value1: T1, _ value2: T2, _ value3: T3, _ value4: T4) {
        self.value1 = value1
        self.value2 = value2
        self.value3 = value3
        self.value4 = value4
    }
    public typealias Body = Never
    
    var _views: [UIView] {
        return [
            self.value1._views,
            self.value2._views,
            self.value3._views,
            self.value4._views
        ].flatMap(returnSelf)
    }
    
}

@frozen
public struct TupleView5<T1: View, T2: View, T3: View, T4: View, T5: View>: View, Container {
    public var body: Never {
        fatalError()
    }
    public let value1: T1, value2: T2, value3: T3, value4: T4, value5: T5
    public init(_ value1: T1, _ value2: T2, _ value3: T3, _ value4: T4,
                _ value5: T5)
    {
        self.value1 = value1; self.value2 = value2; self.value3 = value3
        self.value4 = value4; self.value5 = value5
    }
    public typealias Body = Never
    
    var _views: [UIView] {
        return [
            self.value1._views,
            self.value2._views,
            self.value3._views,
            self.value4._views,
            self.value5._views
        ].flatMap(returnSelf)
    }
}

@frozen
public struct TupleView6<T1: View, T2: View, T3: View, T4: View, T5: View,
                         T6: View>
: View, Container
{
    public var body: Never {
        fatalError()
    }
    
    public let value1: T1, value2: T2, value3: T3, value4: T4, value5: T5
    public let value6: T6
    public init(_ value1: T1, _ value2: T2, _ value3: T3, _ value4: T4,
                _ value5: T5, _ value6: T6)
    {
        self.value1 = value1; self.value2 = value2; self.value3 = value3
        self.value4 = value4; self.value5 = value5; self.value6 = value6
    }
    public typealias Body = Never
    
    var _views: [UIView] {
        return [
            self.value1._views,
            self.value2._views,
            self.value3._views,
            self.value4._views,
            self.value5._views,
            self.value6._views
        ].flatMap(returnSelf)
    }
}

@frozen
public struct TupleView7<T1: View, T2: View, T3: View, T4: View, T5: View,
                         T6: View, T7: View>
: View, Container
{
    public var body: Never {
        fatalError()
    }
    
    public let value1: T1, value2: T2, value3: T3, value4: T4, value5: T5
    public let value6: T6, value7: T7
    public init(_ value1: T1, _ value2: T2, _ value3: T3, _ value4: T4,
                _ value5: T5, _ value6: T6, _ value7: T7)
    {
        self.value1 = value1; self.value2 = value2; self.value3 = value3
        self.value4 = value4; self.value5 = value5; self.value6 = value6
        self.value7 = value7
    }
    public typealias Body = Never
    
    var _views: [UIView] {
        return [
            self.value1._views,
            self.value2._views,
            self.value3._views,
            self.value4._views,
            self.value5._views,
            self.value6._views,
            self.value7._views
        ].flatMap(returnSelf)
    }
}

@frozen
public struct TupleView8<T1: View, T2: View, T3: View, T4: View, T5: View,
                         T6: View, T7: View, T8: View>
: View, Container
{
    public var body: Never {
        fatalError()
    }
    public let value1: T1, value2: T2, value3: T3, value4: T4, value5: T5
    public let value6: T6, value7: T7, value8: T8
    public init(_ value1: T1, _ value2: T2, _ value3: T3, _ value4: T4,
                _ value5: T5, _ value6: T6, _ value7: T7, _ value8: T8)
    {
        self.value1 = value1; self.value2 = value2; self.value3 = value3
        self.value4 = value4; self.value5 = value5; self.value6 = value6
        self.value7 = value7; self.value8 = value8
    }
    public typealias Body = Never
    
    var _views: [UIView] {
        return [
            self.value1._views,
            self.value2._views,
            self.value3._views,
            self.value4._views,
            self.value5._views,
            self.value6._views,
            self.value7._views,
            self.value8._views
        ].flatMap(returnSelf)
    }
}

@frozen
public struct TupleView9<T1: View, T2: View, T3: View, T4: View, T5: View,
                         T6: View, T7: View, T8: View, T9: View>: View, Container {
    public var body: Never {
        fatalError()
    }
    
    public let value1: T1, value2: T2, value3: T3, value4: T4, value5: T5
    public let value6: T6, value7: T7, value8: T8, value9: T9
    public init(_ value1: T1, _ value2: T2, _ value3: T3, _ value4: T4,
                _ value5: T5, _ value6: T6, _ value7: T7, _ value8: T8,
                _ value9: T9)
    {
        self.value1 = value1; self.value2 = value2; self.value3 = value3
        self.value4 = value4; self.value5 = value5; self.value6 = value6
        self.value7 = value7; self.value8 = value8; self.value9 = value9
    }
    public typealias Body = Never
    
    
    var _views: [UIView] {
        return [
            self.value1._views,
            self.value2._views,
            self.value3._views,
            self.value4._views,
            self.value5._views,
            self.value6._views,
            self.value7._views,
            self.value8._views,
            self.value9._views
        ].flatMap(returnSelf)
    }
}

@frozen
public struct TupleView10<T1: View, T2: View, T3: View, T4: View, T5: View,
                          T6: View, T7: View, T8: View, T9: View, T10: View>: View, Container {
    public var body: Never {
        fatalError()
    }
    
    public let value1: T1, value2: T2, value3: T3, value4: T4, value5: T5
    public let value6: T6, value7: T7, value8: T8, value9: T9, value10: T10
    public init(_ value1: T1, _ value2: T2, _ value3: T3, _ value4: T4,
                _ value5: T5, _ value6: T6, _ value7: T7, _ value8: T8,
                _ value9: T9, _ value10: T10)
    {
        self.value1 = value1; self.value2 = value2; self.value3 = value3
        self.value4 = value4; self.value5 = value5; self.value6 = value6
        self.value7 = value7; self.value8 = value8; self.value9 = value9
        self.value10 = value10
    }
    public typealias Body = Never
    
    
    var _views: [UIView] {
        return [
            self.value1._views,
            self.value2._views,
            self.value3._views,
            self.value4._views,
            self.value5._views,
            self.value6._views,
            self.value7._views,
            self.value8._views,
            self.value9._views,
            self.value10._views
        ].flatMap(returnSelf)
    }
}

private func returnSelf<T>(_ t: T) -> T {
    return t
}
