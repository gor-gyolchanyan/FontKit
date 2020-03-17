//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

#if canImport(AppKit)
import AppKit

// Type: NSFont
// Topic: FontDescriptorHaving

extension NSFont {

    // Topic: Main

    public convenience init?<Font>(_ font: Font)
    where Font: FontDescriptorHaving {
        let font = font.fontDescriptor

        var fontTraits: [NSFontDescriptor.TraitKey: NSObject] = [:]
        fontTraits[.slant] = font.slant.rawValue as NSNumber
        fontTraits[.weight] = font.weight.rawValue as NSNumber
        fontTraits[.width] = font.width.rawValue as NSNumber

        var fontAttributes: [NSFontDescriptor.AttributeName: NSObject] = [:]
        fontAttributes[.family] = font.family.rawValue as NSString
        fontAttributes[.size] = font.size.rawValue as NSNumber
        fontAttributes[.traits] = fontTraits as NSDictionary

        let fontDescriptor = NSFontDescriptor(fontAttributes: fontAttributes)
        self.init(descriptor: fontDescriptor, size: 0)
    }
}
#endif
