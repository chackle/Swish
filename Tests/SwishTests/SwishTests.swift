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
      .element("p", .pseudoClass(.nthChild(3)),
        .backgroundColor(.hex(0xff0000))
      )
    )
  }

  static var allTests = [
      ("testClassRender", testClassRender),
      ("testSelectorRender", testSelectorRender)
  ]
}
