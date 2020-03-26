//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

// Exposed

public struct Font: Hashable {

    // Exposed

    // Type: Font
    // Topic: Main

    public init(
        family: FontFamily,
        face: FontFace,
        size: FontSize
    ) {
        self.family = family
        self.face = face
        self.size = size
    }

    public var family: FontFamily

    public var face: FontFace

    public var size: FontSize
}
