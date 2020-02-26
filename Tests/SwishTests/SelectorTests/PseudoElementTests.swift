import XCTest
@testable import Swish

final class PseudoElementTests: XCTestCase {

  func testAfterSelectorRawValue() {
    let selectorName = "selector"
    let selector = AnySelector.selector(selectorName, pseudoElement: .after)
    XCTAssertEqual(selector.rawValue, "selector::after { }")
  }

  func testBeforeSelectorRawValue() {
    let selectorName = "selector"
    let selector = AnySelector.selector(selectorName, pseudoElement: .before)
    XCTAssertEqual(selector.rawValue, "selector::before { }")
  }

  func testFirstLetterSelectorRawValue() {
    let selectorName = "selector"
    let selector = AnySelector.selector(selectorName, pseudoElement: .firstLetter)
    XCTAssertEqual(selector.rawValue, "selector::first-letter { }")
  }

  func testFirstLineSelectorRawValue() {
    let selectorName = "selector"
    let selector = AnySelector.selector(selectorName, pseudoElement: .firstLine)
    XCTAssertEqual(selector.rawValue, "selector::first-line { }")
  }

  func testSelectionSelectorRawValue() {
    let selectorName = "selector"
    let selector = AnySelector.selector(selectorName, pseudoElement: .selection)
    XCTAssertEqual(selector.rawValue, "selector::selection { }")
  }

  static var all = [
      ("testAfterSelectorRawValue", testAfterSelectorRawValue),
      ("testBeforeSelectorRawValue", testBeforeSelectorRawValue),
      ("testFirstLetterSelectorRawValue", testFirstLetterSelectorRawValue),
      ("testFirstLineSelectorRawValue", testFirstLineSelectorRawValue),
      ("testSelectionSelectorRawValue", testSelectionSelectorRawValue)
  ]
}
