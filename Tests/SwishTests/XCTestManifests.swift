import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(CSSTests.all),
        testCase(UnitTests.all)
    ]
}
#endif
