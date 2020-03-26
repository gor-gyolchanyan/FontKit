//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

// Exposed

@frozen
public struct FontFace: Hashable {

    // Exposed

    // Concealed

    // Type: FontFace
    // Topic: Main

    init(_name name: String) {
        _name = name
    }

    let _name: String
}

extension FontFace {

    // Exposed

    // Type: Font
    // Topic: Main

    public init?(
        name: String,
        in family: FontFamily,
        manager: FontManager = .default
    ) {
        self.init(_name: name)
        guard manager.fontSet[family]?.contains(self) ?? false else {
            return nil
        }
    }
}

extension FontFace: CustomStringConvertible {

    // Exposed

    // Protocol: CustomStringConvertible
    // Topic: Main

    public var description: String {
        _name
    }
}
