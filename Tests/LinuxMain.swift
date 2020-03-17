import XCTest

import FontKit_Test

var testCaseEntrySet: [XCTestCaseEntry] {
    var result = [XCTestCaseEntry]()
    result.append(contentsOf: FontKit_Test.testCaseEntrySet)
    return result
}

XCTMain(testCaseEntrySet)
