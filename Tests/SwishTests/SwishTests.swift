import XCTest
@testable import Swish

final class SwishTests: XCTestCase {

  func testClassRender() {
    let css = CSS(
      .class("my-class")
    )
    XCTAssertEqual(css.render(), ".my-class {  }")
  }
  
  func testSelectorRender() {
    let css = CSS(
      .selector("p")
    )
    XCTAssertEqual(css.render(), "p {  }")
  }

  func testElementRender() {
    let css = CSS(
      .element("ul",
        .background(color: .cornflowerBlue)
      ),
      .element("li", .pseudoClass(.nthChild(3)),
        .background(color: .aliceBlue)
      )
    )
    print(css.render())
    XCTAssertEqual(css.render(), "ul { background: #6495ED; } li:nth-child(3) { background: #F0F8FF; }")
  }

  static var allTests = [
      ("testClassRender", testClassRender),
      ("testSelectorRender", testSelectorRender),
      ("testElementRender", testElementRender)
  ]
}
