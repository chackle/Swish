import XCTest
@testable import Swish

final class CSSTests: XCTestCase {

  func testBasicAnySelectorRender() {
    let css = CSS(
      .selector("selector")
    )
    XCTAssertEqual(css.render(), "selector { }")
  }

  func testBasicClassRender() {
    let css = CSS(
      .class("class")
    )
    XCTAssertEqual(css.render(), ".class { }")
  }
  
  func testBasicIdRender() {
    let css = CSS(
      .id("id")
    )
    XCTAssertEqual(css.render(), "#id { }")
  }

  func testBasicElementRender() {
    let css = CSS(
      .element("element")
    )
    XCTAssertEqual(css.render(), "element { }")
  }

  func testBasicAttributeRender() {
    let css = CSS(
      .element("attribute")
    )
    XCTAssertEqual(css.render(), "[attribute] { }")
  }

  func testComplexElementRender() {
    let css = CSS(
      .element("ul",
        .background(color: .cornflowerBlue)
      ),
      .element("li", pseudoClass: .nthChild(3),
        .background(color: .aliceBlue)
      )
    )
    XCTAssertEqual(css.render(), "ul { background: #6495ED; } li:nth-child(3) { background: #F0F8FF; }")
  }

  static var all = [
    ("testBasicAnySelectorRender", testBasicAnySelectorRender),
    ("testBasicClassRender", testBasicClassRender),
    ("testBasicIdRender", testBasicIdRender),
    ("testBasicElementRender", testBasicElementRender),
    ("testBasicAttributeRender", testBasicAttributeRender),
    ("testComplexElementRender", testComplexElementRender)
  ]
}
