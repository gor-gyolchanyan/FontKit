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

extension FontFace: CustomStringConvertible {

    // Exposed

    // Protocol: CustomStringConvertible
    // Topic: Main

    public var description: String {
        _name
    }
}
