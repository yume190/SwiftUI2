# Custom View to conform `SwiftUI2.View`

``View`` todo...

## Overview

```swift
import SwiftUI2

class YourView: SwiftUI2.View {
    private let stack = VStack(alignment: .fill, spacing: 0) {
        UILabel()
        VStack {
            Text("abc")
        }
    }

    var body: UIStackView {
        stack.body
    }
}
```


## Topics

### Nothin

- ``View``
