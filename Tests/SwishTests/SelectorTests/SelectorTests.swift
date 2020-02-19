import XCTest
@testable import Swish

final class SelectorTests: XCTestCase {

  func testAnySelectorRawValue() {
    let selectorName = "selector"
    let selector = AnySelector.selector(selectorName)
    XCTAssertEqual(selector.rawValue, "selector { }")
  }

  func testClassSelectorRawValue() {
    let selectorName = "selector"
    let selector = AnySelector.class(selectorName)
    XCTAssertEqual(selector.rawValue, ".selector { }")
  }

  func testIdSelectorRawValue() {
    let selectorName = "selector"
    let selector = AnySelector.id(selectorName)
    XCTAssertEqual(selector.rawValue, "#selector { }")
  }

  func testElementSelectorRawValue() {
    let selectorName = "selector"
    let selector = AnySelector.element(selectorName)
    XCTAssertEqual(selector.rawValue, "selector { }")
  }

  func testAttributeSelectorRawValue() {
    let selectorName = "selector"
    let selector = AnySelector.attribute(selectorName)
    XCTAssertEqual(selector.rawValue, "[selector] { }")
  }

  static var all = [
      ("testAnySelectorRawValue", testAnySelectorRawValue),
      ("testClassSelectorRawValue", testClassSelectorRawValue),
      ("testIdSelectorRawValue", testIdSelectorRawValue),
      ("testElementSelectorRawValue", testElementSelectorRawValue),
      ("testAttributeSelectorRawValue", testAnySelectorRawValue)
  ]
}
