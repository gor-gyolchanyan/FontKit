//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

// Type: FontDescriptor.Family

extension FontDescriptor {
    public struct Family: RawRepresentable {

        // Protocol: RawRepresentable

        // Exposed

        public typealias RawValue = String

        public init(rawValue: RawValue) {
            self.rawValue = rawValue
        }

        public let rawValue: RawValue
    }
}

// Topic: Standard

extension FontDescriptor.Family {

    // Exposed

    public static let regular = Self(rawValue: "Helvetica Neue")
}
