import XCTest
@testable import Swish

final class SwishTests: XCTestCase {
  func testRenderClass() {
    let css = CSS(
      .class("my-class")
    )
    XCTAssertEqual(css.render(), ".my-class {  }")
  }
  
  func testRenderSelector() {
    let css = CSS(
      .selector("p")
    )
    XCTAssertEqual(css.render(), "p {  }")
  }

  static var allTests = [
      ("testRenderClass", testRenderClass),
      ("testRenderSelector", testRenderSelector)
  ]
}
