//
//  Never.swift
//  SwiftUI2
//
//  Created by Yume on 2020/11/27.
//

import Foundation

extension Never: View {
    public var body: Never {
        fatalError()
    }

    public typealias Body = Never
}
