//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

// Type: FontDescriptor.Size

extension FontDescriptor {
    public struct Size: RawRepresentable {

        // Protocol: RawRepresentable

        // Exposed

        public typealias RawValue = Float64

        public init(rawValue: RawValue) {
            if !rawValue.isFinite || rawValue < 0 {
                self.rawValue = 0
            } else {
                self.rawValue = rawValue
            }
        }

        public let rawValue: RawValue
    }
}

// Type: Standard

extension FontDescriptor.Size {

    // Exposed

    public static func * (_ some: Self, _ other: RawValue) -> Self {
        .init(rawValue: some.rawValue * other)
    }

    public static func / (_ some: Self, _ other: RawValue) -> Self {
        .init(rawValue: some.rawValue / other)
    }

    public static func / (_ some: Self, _ other: Self) -> RawValue {
        some.rawValue / other.rawValue
    }

    public static let regular = Self(rawValue: 14)
}

// Protocol: AdditiveArithmetic

extension FontDescriptor.Size: AdditiveArithmetic {

    // Exposed

    public static var zero: Self {
        .init(rawValue: .zero)
    }

    public static func + (_ some: Self, _ other: Self) -> Self {
        .init(rawValue: some.rawValue + other.rawValue)
    }

    public static func += (_ some: inout Self, _ other: Self) {
        some = some + other
    }

    public static func - (_ some: Self, _ other: Self) -> Self {
        .init(rawValue: some.rawValue + other.rawValue)
    }

    public static func -= (_ some: inout Self, _ other: Self) {
        some = some - other
    }
}
