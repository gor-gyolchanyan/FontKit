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
