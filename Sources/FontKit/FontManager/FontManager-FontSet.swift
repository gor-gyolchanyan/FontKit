//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

#if os(macOS) && targetEnvironment(macCatalyst) || os(iOS) || os(tvOS) || os(watchOS)
    import class UIKit.UIFont
    import class UIKit.UIFontDescriptor
#elseif os(macOS) && !targetEnvironment(macCatalyst)
    import class AppKit.NSFont
    import class AppKit.NSFontDescriptor
#else
    // This is intentionally left blank.
#endif

extension FontManager {

    // Exposed

    // Type: FontManager
    // Topic: FontFamily

    public typealias FontSet = [FontFamily: Set<FontFace>]

    public var fontSet: FontSet {
        updateFontSet()
        return _fontSet
    }

    public func requestFontSetUpdate() {
        _isFontSetUpdated = false
    }

    public func updateFontSet() {
        guard !_isFontSetUpdated else {
            return
        }
        defer {
            _isFontSetUpdated = true
        }
        let fontFamilyNameList: [String]
        #if os(macOS) && targetEnvironment(macCatalyst) || os(iOS) || os(tvOS) || os(watchOS)
            fontFamilyNameList = UIKit.UIFont.familyNames
        #elseif os(macOS) && !targetEnvironment(macCatalyst)
            fontFamilyNameList = _native.availableFontFamilies
        #else
            fontFamilyNameList = .init()
        #endif

        _fontSet.removeAll(keepingCapacity: true)
        _fontSet.reserveCapacity(fontFamilyNameList.count)
        for fontFamilyName in fontFamilyNameList {
            var fontFaceSet: FontSet.Value
            fontFaceSet = .init()
            #if os(macOS) && targetEnvironment(macCatalyst) || os(iOS) || os(tvOS) || os(watchOS)
                let fontNameList = UIKit.UIFont.fontNames(forFamilyName: fontFamilyName)
                fontFaceSet.reserveCapacity(fontNameList.count)
                for fontName in fontNameList {
                    let fontFaceName =
                        UIKit.UIFontDescriptor(name: fontName, size: 0)
                        .object(forKey: .face) as! String
                    fontFaceSet.insert(.init(_name: fontFaceName))
                }
            #elseif os(macOS) && !targetEnvironment(macCatalyst)
                let fontInformationList = _native.availableMembers(ofFontFamily: fontFamilyName)!
                fontFaceSet.reserveCapacity(fontInformationList.count)
                for fontInformation in fontInformationList {
                    let fontName = fontInformation[0] as! String
                    let fontFaceName =
                        AppKit.NSFontDescriptor(name: fontName, size: 0)
                        .object(forKey: .face) as! String
                    fontFaceSet.insert(.init(_name: fontFaceName))
                }
            #else
                // This is intentionally left blank.
            #endif
            _fontSet[.init(_name: fontFamilyName)] = fontFaceSet
        }
    }
}
