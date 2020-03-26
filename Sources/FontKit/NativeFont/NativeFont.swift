//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

// Exposed

#if os(macOS) && targetEnvironment(macCatalyst) || os(iOS) || os(tvOS) || os(watchOS)
    import struct CoreGraphics.CGFloat
    import class Foundation.NSNumber
    import class Foundation.NSString
    import class UIKit.UIFont
    import class UIKit.UIFontDescriptor

    // Exposed

    public typealias NativeFont = UIKit.UIFont

    extension NativeFont {

        // Exposed

        // Class: NativeFont
        // Topic: Font

        public convenience init(_ font: Font) {
            var fontAttributes: [UIKit.UIFontDescriptor.AttributeName: Any]
            fontAttributes = .init()
            fontAttributes[.family] = font.family.description as Foundation.NSString
            fontAttributes[.face] = font.face.description as Foundation.NSString
            fontAttributes[.size] = font.size as Foundation.NSNumber
            let fontDescriptor = UIKit.UIFontDescriptor(fontAttributes: fontAttributes)
            self.init(descriptor: fontDescriptor, size: 0)
        }
    }

    extension Font {

        // Exposed

        // Type: Font
        // Topic: NativeFont

        init(_ nativeFont: NativeFont) {
            self.init(
                family: FontFamily(_name: nativeFont.fontDescriptor.object(forKey: .family) as! String),
                face: FontFace(_name: nativeFont.fontDescriptor.object(forKey: .face) as! String),
                size: FontSize(nativeFont.fontDescriptor.object(forKey: .size) as! CoreGraphics.CGFloat)
            )
        }
    }
#elseif os(macOS) && !targetEnvironment(macCatalyst)
    import struct CoreGraphics.CGFloat
    import class Foundation.NSNumber
    import class Foundation.NSString
    import class AppKit.NSFont
    import class AppKit.NSFontDescriptor

    // Exposed

    public typealias NativeFont = AppKit.NSFont

    extension NativeFont {

        // Exposed

        // Class: NativeFont
        // Topic: Font

        public convenience init(_ font: Font) {
            var fontAttributes: [AppKit.NSFontDescriptor.AttributeName: Any]
            fontAttributes = .init()
            fontAttributes[.family] = font.family.description as Foundation.NSString
            fontAttributes[.face] = font.face.description as Foundation.NSString
            fontAttributes[.size] = font.size as Foundation.NSNumber
            let fontDescriptor = AppKit.NSFontDescriptor(fontAttributes: fontAttributes)
            self.init(descriptor: fontDescriptor, size: 0)!
        }
    }

    extension Font {

        // Exposed

        // Type: Font
        // Topic: NativeFont

        init(_ nativeFont: NativeFont) {
            self.init(
                family: FontFamily(_name: nativeFont.fontDescriptor.object(forKey: .family) as! String),
                face: FontFace(_name: nativeFont.fontDescriptor.object(forKey: .face) as! String),
                size: FontSize(nativeFont.fontDescriptor.object(forKey: .size) as! CoreGraphics.CGFloat)
            )
        }
    }
#else
    // This is intentionally left blank.
#endif
