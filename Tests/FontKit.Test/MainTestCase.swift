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

        let fontManager = FontManager.default
        guard let fontFamily = fontManager.fontFamily(fontFamilyName) else {
            XCTFail("Font family \(String(reflecting: fontFamilyName)) does not exist.")
            return
        }
        guard let fontFace = fontManager.fontFace(fontFaceName, for: fontFamily) else {
            XCTFail("Font face \(String(reflecting: fontFaceName)) for font family \(String(reflecting: fontFamilyName)) does not exist.")
            return
        }
        let initialFont = Font(
            family: fontFamily,
            face: fontFace,
            size: 16
        )
        let nativeFont = NativeFont(initialFont)
        let finalFont = Font(nativeFont)
        XCTAssertEqual(initialFont, finalFont)
    }
}
