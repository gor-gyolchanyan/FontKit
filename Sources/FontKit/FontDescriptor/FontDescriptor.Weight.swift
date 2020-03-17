//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

// Type: FontDescriptor.Weight

extension FontDescriptor {
    public struct Weight: RawRepresentable {

        // Protocol: RawRepresentable

        // Exposed

        public typealias RawValue = Float64

        public init(rawValue: RawValue) {
            if rawValue.isNaN {
                self.rawValue = 0
            } else if rawValue < -1 {
                self.rawValue = -1
            } else if rawValue > 1 {
                self.rawValue = 1
            } else {
                self.rawValue = rawValue
            }
        }

        public let rawValue: RawValue
    }
}

// Topic: Standard

extension FontDescriptor.Weight {

    // Exposed

    public static let ultraLight = Self(rawValue: -0.8)

    public static let thin = Self(rawValue: -0.6)

    public static let light = Self(rawValue: -0.4)

    public static let regular = Self(rawValue: 0.0)

    public static let medium = Self(rawValue: 0.23)

    public static let semibold = Self(rawValue: 0.3)

    public static let bold = Self(rawValue: 0.4)

    public static let heavy = Self(rawValue: 0.56)

    public static let black = Self(rawValue: 0.62)
}
