import XCTest
@testable import Swish

final class UnitTests: XCTestCase {

  func testUnitPxRawValue() {
    let unit = Unit.px(32)
    XCTAssertEqual(unit.rawValue, "32px")
  }

  func testUnitPctRawValue() {
    let unit = Unit.px(32)
    XCTAssertEqual(unit.rawValue, "32%")
  }

  func testUnitSetRawValue() {
    let unitSet = UnitSet<Double, Double, Double, Double>(first: .px(32), second: .pct(20), third: .em(16), fourth: .pc(8))
    XCTAssertEqual(unitSet.rawValue, "32px 20% 16em 8pc")
  }

  static var all = [
      ("testUnitPxRawValue", testUnitPxRawValue),
      ("testUnitSetRawValue", testUnitSetRawValue),
      ("testUnitPctRawValue", testUnitPctRawValue)
  ]
}
