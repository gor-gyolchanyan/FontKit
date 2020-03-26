//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

#if os(macOS) && targetEnvironment(macCatalyst) || os(iOS) || os(tvOS) || os(watchOS)
    // This is intentionally left blank.
#elseif os(macOS) && !targetEnvironment(macCatalyst)
    import class AppKit.NSFontManager
#else
    // This is intentionally left blank.
#endif

// Exposed

public final class FontManager {

    // Concealed

    // Type: FontManager
    // Topic: Main

    #if os(macOS) && targetEnvironment(macCatalyst) || os(iOS) || os(tvOS) || os(watchOS)
        typealias _Native = Void
    #elseif os(macOS) && !targetEnvironment(macCatalyst)
        typealias _Native = AppKit.NSFontManager
    #else
        typealias _Native = Void
    #endif

    init(_native native: _Native) {
        _native = native
        _fontSet = .init()
        _isFontSetUpdated = false
    }

    let _native: _Native
    var _fontSet: FontSet
    var _isFontSetUpdated: Bool
}

extension FontManager {

    // Exposed

    // Type: FontManager
    // Topic: Main

    public static let `default`: FontManager = {
        let native: _Native
        #if os(macOS) && targetEnvironment(macCatalyst) || os(iOS) || os(tvOS) || os(watchOS)
            native = ()
        #elseif os(macOS) && !targetEnvironment(macCatalyst)
            native = .shared
        #else
            native = ()
        #endif
        return .init(_native: native)
    }()
}
