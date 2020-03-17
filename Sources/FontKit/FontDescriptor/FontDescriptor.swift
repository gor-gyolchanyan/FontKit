//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

// Type: FontDescriptor

public struct FontDescriptor {

    // Topic: Main

    // Exposed

    public init(
        family: Family,
        size: Size,
        slant: Slant = .init(),
        weight: Weight = .init(),
        width: Width = .init()
    ) {
        self.family = family
        self.size = size
        self.slant = slant
        self.weight = weight
        self.width = width
    }

    public var family: Family
    public var size: Size
    public var slant: Slant
    public var weight: Weight
    public var width: Width
}
