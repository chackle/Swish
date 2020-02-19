import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(CSSTests.all),
        testCase(SelectorTests.all),
        testCase(PseudoClassTests.all),
        testCase(PseudoElementTests.all),
        testCase(UnitTests.all)
    ]
}
#endif
