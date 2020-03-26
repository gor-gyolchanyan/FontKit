import XCTest
@testable import FontKit

// Type: MainTestCase

final class MainTestCase: XCTestCase { }

// Topic: Main

extension MainTestCase {

    static let entrySet = [
        ("testMain", testMain),
    ]

    func testMain() {
        let fontFamilyName = "Helvetica Neue"
        let fontFaceName = "Bold Italic"
        guard
            let initialFont = Font(
                familyName: fontFamilyName,
                faceName: fontFaceName,
                size: 16
            )
        else {
            XCTFail("There is no font with family \(String(reflecting: fontFamilyName)) and face \(String(reflecting: fontFaceName)).")
            return
        }
        let nativeFont = NativeFont(initialFont)
        let finalFont = Font(nativeFont)
        XCTAssertEqual(initialFont, finalFont)
    }
}
