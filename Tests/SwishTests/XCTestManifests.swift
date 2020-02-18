import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(SwishTests.all),
        testCase(UnitTests.all)
    ]
}
#endif
