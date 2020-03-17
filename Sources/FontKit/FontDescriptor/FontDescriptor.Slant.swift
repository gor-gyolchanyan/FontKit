//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

// Type: FontDescriptor.Slant

extension FontDescriptor {
    public struct Slant: RawRepresentable {

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

// Topic: Main

extension FontDescriptor.Slant {

    // Exposed

    public init() {
        self.init(rawValue: 0)
    }
}
