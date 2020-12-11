import XCTest
@testable import SwiftUI2

struct DirectionPad: View {
    var body: VStack<TupleView3<Text, HStack<TupleView2<Text, Text>>, Text>> {
        VStack(alignment: .center, spacing: 50) {
            Text("top")
            HStack(alignment: .center, spacing: 50) {
                Text("left")
                Text("right")
            }
            Text("down")
        }
    }
}

final class SwiftUI2Tests: XCTestCase {
    func testStack() {
        let stack = VStack {
            Text("")
            Text("")
        }
        
        XCTAssertEqual(stack.view.arrangedSubviews.count, 2)
    }
    
    @ViewBuilder func building(option: Bool) -> _ConditionalContent<Text, Text> {
        if option {
            Text("a")
        } else {
            Text("b")
        }
    }
    func testTrue() {
        let label = building(option: true)._views.first as! UILabel
        XCTAssertEqual(label.text, "a")
    }
    
    func testFalse() {
        let label = building(option: false)._views.first as! UILabel
        XCTAssertEqual(label.text, "b")
    }
    
    func testCustom() {
        let custom = DirectionPad()
        XCTAssertEqual(custom.body.view.arrangedSubviews.count, 3)
    }
    
    func testTuple() {
        let stack = VStack {
            HStack {
                Text("a")
                Text("b")
            }
            HStack {
                Text("c")
                Text("d")
            }
        }
        
        XCTAssertEqual(stack.view.arrangedSubviews.count, 2)
    }
    
    func testIf() {
        let a = true
        let stack = VStack {
            if a {
                Text("a")
                Text("b")
            } else {
                Text("c")
            }
            
            Text("c")
            Text("d")
        }
        XCTAssertEqual(stack.view.arrangedSubviews.count, 4)
    }
    
    static var allTests = [
        ("testStack", testStack),
    ]
}
