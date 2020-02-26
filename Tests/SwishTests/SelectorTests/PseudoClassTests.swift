import XCTest
@testable import Swish

final class PseudoClassTests: XCTestCase {

  func testHoverSelectorRawValue() {
    let selectorName = "selector"
    let selector = AnySelector.selector(selectorName, pseudoClass: .hover)
    XCTAssertEqual(selector.rawValue, "selector:hover { }")
  }

  func testOutOfRangeSelectorRawValue() {
    let selectorName = "selector"
    let selector = AnySelector.selector(selectorName, pseudoClass: .outOfRange)
    XCTAssertEqual(selector.rawValue, "selector:out-of-range { }")
  }

  func testLangSelectorRawValue() {
    let selectorName = "selector"
    let selector = AnySelector.selector(selectorName, pseudoClass: .lang("it"))
    XCTAssertEqual(selector.rawValue, "selector:lang(it) { }")
  }

  func testNthChildSelectorRawValue() {
    let selectorName = "selector"
    let selector = AnySelector.selector(selectorName, pseudoClass: .nthChild(7))
    XCTAssertEqual(selector.rawValue, "selector:nth-child(7) { }")
  }

  static var all = [
      ("testHoverSelectorRawValue", testHoverSelectorRawValue),
      ("testLangSelectorRawValue", testLangSelectorRawValue),
      ("testNthChildSelectorRawValue", testNthChildSelectorRawValue)
  ]
}
