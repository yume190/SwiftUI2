import XCTest
@testable import SwiftUI2

final class SwiftUI2Tests: XCTestCase {
    @ViewBuilder func either(option: Bool) -> _ConditionalContent<TupleView2<Text, Text>, Text> {
        if option {
            Text("a")
            Text("b")
        } else {
            Text("c")
        }
    }
    
    func testForEach() {
        let forEach = ForEach([String].init(repeating: "abc", count: 20)) { str in
            Text(str)
        }
        
        XCTAssertEqual(forEach._views.count, 20)
    }
    
    func testForEach2() {
        let views = [String](repeating: "abc", count: 20).map { str in
            return VStack {
                Text(str)
            }
        }
        let stack = VStack {
            VStack {
                Text("Hello")
                Text("world")
            }
//            ForEach([String](repeating: "abc", count: 20)) { str in
//                Text(str)
//            }
            ForEach(views) {
                $0
            }
            
        }
        
        XCTAssertEqual(stack.view.arrangedSubviews.count, 21)
    }
    
    func testEitherTrue() {
        let label1 = either(option: true)._views.first as! UILabel
        let label2 = either(option: true)._views.last as! UILabel
        XCTAssertEqual(label1.text, "a")
        XCTAssertEqual(label2.text, "b")
    }
    
    func testEitherFalse() {
        let label = either(option: false)._views.first as! UILabel
        XCTAssertEqual(label.text, "c")
    }
    
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
    
    func testCustom() {
        let custom = DirectionPad()
        XCTAssertEqual(custom.body.view.arrangedSubviews.count, 3)
    }
    
    func testStack() {
        let stack = VStack {
            HStack {
                Text("a")
                Text("b")
                Text("c")
            }
            HStack {
                Text("d")
                Text("c")
            }
        }
        let stack1 = stack.view
        let stack2_1 = stack1.arrangedSubviews[0] as! UIStackView
        let stack2_2 = stack1.arrangedSubviews[1] as! UIStackView
        XCTAssertEqual(stack1.arrangedSubviews.count, 2)
        XCTAssertEqual(stack2_1.arrangedSubviews.count, 3)
        XCTAssertEqual(stack2_2.arrangedSubviews.count, 2)
    }
    
    @ViewBuilder func buildIf(option: Bool) -> TupleView2<Text, Text>? {
        if option {
            Text("a")
            Text("b")
        }
    }
    
    func testIfTrue() {
        let view = buildIf(option: true)
        XCTAssertEqual(view._views.count, 2)
    }
    
    func testIfFalse() {
        let view = buildIf(option: false)
        XCTAssertEqual(view._views.count, 0)
    }
    
    func testUIView() {
        let stack = VStack {
            UIView()
            UILabel()
            UIStackView()
        }
        
        XCTAssertEqual(stack.view.arrangedSubviews.count, 3)
    }
    
//    func testSpacer() {
//        let a: Int = 1
//        let b: Float = 1
//        let c: Double = 1
//        let d: CGFloat = 1
//        let stack = VStack {
//            a
//            b
//            c
//            d
//        }
//        XCTAssertEqual(stack.view.arrangedSubviews.count, 4)
//    }

//    static var allTests = [
//        ("testStack", testStack),
//    ]
}


func build<V: View>(@ViewBuilder _ builder: () -> V) -> V {
    return builder()
}
