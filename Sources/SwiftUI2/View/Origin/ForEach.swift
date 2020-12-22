//
//  ForEach.swift
//  
//
//  Created by Yume on 2020/12/21.
//

import class UIKit.UIView

public struct ForEach<Data: RandomAccessCollection, Content: View>: View {
    public let data: Data
    
    public let content: (Data.Element) -> Content
    
    public var body: Never {
        fatalError()
    }
    
    public init(_ data: Data, @ViewBuilder content: @escaping (Data.Element) -> Content) {
        self.data = data
        self.content = content
    }
}

extension ForEach: Container {
    var _views: [UIView] {
        return self.data
            .map(self.content)
            .flatMap(\._views)
    }
}
