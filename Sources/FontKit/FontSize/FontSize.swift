//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

#if canImport(Foundation)
    import class Foundation.NSNumber
#endif

// Exposed

@frozen
public struct FontSize {

    // Concealed

    // Type: FontSize
    // Topic: Main

    @inlinable
    init(_value value: Swift.FloatLiteralType) {
        _value = value
    }

    @usableFromInline
    var _value: Swift.FloatLiteralType
}

extension FontSize {

    // Exposed

    // Type: FontSize
    // Topic: Main

    @inlinable
    public init?<SomeString>(_ description: SomeString)
        where SomeString: StringProtocol {
            guard let value = Swift.FloatLiteralType(description) else {
                return nil
            }
            self.init(_value: value)
    }

    #if canImport(Foundation)

    @inlinable
    public init(truncating number: Foundation.NSNumber) {
        self.init(_value: Swift.FloatLiteralType(truncating: number))
    }

    @inlinable
    public init?(exactly number: Foundation.NSNumber) {
        guard let value = Swift.FloatLiteralType(exactly: number) else {
            return nil
        }
        self.init(_value: value)
    }

    #endif
}

extension FontSize: AdditiveArithmetic {

    // Exposed

    // Protocol: AdditiveArithmetic
    // Topic: Main

    @inlinable
    public static var zero: Self {
        .init(_value: Swift.FloatLiteralType.zero)
    }

    @inlinable
    public static prefix func + (_ some: Self) -> Self {
        .init(_value: +some._value)
    }

    @inlinable
    public static func += (_ some: inout Self, _ other: Self) {
        some._value += other._value
    }

    @inlinable
    public static func + (_ some: Self, _ other: Self) -> Self {
        .init(_value: some._value + other._value)
    }

    @inlinable
    public static func -= (_ some: inout Self, _ other: Self) {
        some._value -= other._value
    }

    @inlinable
    public static func - (_ some: Self, _ other: Self) -> Self {
        .init(_value: some._value - other._value)
    }
}

extension FontSize: Numeric {

    // Exposed

    // Protocol: Numeric
    // Topic: Main

    public typealias Magnitude = Self

    @inlinable
    public init?<Source>(exactly source: Source)
        where Source: BinaryInteger {
            guard let value = Swift.FloatLiteralType(exactly: source) else {
                return nil
            }
            self.init(_value: value)
    }

    @inlinable
    public var magnitude: Magnitude {
        .init(_value: _value.magnitude)
    }

    @inlinable
    public static func *= (_ some: inout Self, _ other: Self) {
        some._value *= other._value
    }

    @inlinable
    public static func * (_ some: Self, _ other: Self) -> Self {
        .init(_value: some._value * other._value)
    }
}

extension FontSize: SignedNumeric {

    // Exposed

    // Protocol: SignedNumeric
    // Topic: Main

    @inlinable
    public mutating func negate() {
        _value.negate()
    }

    @inlinable
    public static prefix func - (_ some: Self) -> Self {
        .init(_value: -some._value)
    }
}

extension FontSize: Strideable {

    // Exposed

    // Protocol: Strideable
    // Topic: Main

    public typealias Stride = Self

    @inlinable
    public func advanced(by stride: Stride) -> Self {
        .init(_value: _value.advanced(by: stride._value))
    }

    @inlinable
    public func distance(to other: Self) -> Stride {
        .init(_value: _value.distance(to: other._value))
    }
}

extension FontSize: FloatingPoint {

    // Exposed

    // Protocol: FloatingPoint
    // Topic: Main

    public typealias Exponent = Swift.FloatLiteralType.Exponent

    @inlinable
    public static var greatestFiniteMagnitude: Self {
        Self(_value: Swift.FloatLiteralType.greatestFiniteMagnitude)
    }

    @inlinable
    public static var infinity: Self {
        Self(_value: Swift.FloatLiteralType.infinity)
    }

    @inlinable
    public static var leastNonzeroMagnitude: Self {
        Self(_value: Swift.FloatLiteralType.leastNonzeroMagnitude)
    }

    @inlinable
    public static var leastNormalMagnitude: Self {
        Self(_value: Swift.FloatLiteralType.leastNormalMagnitude)
    }

    @inlinable
    public static var nan: Self {
        Self(_value: Swift.FloatLiteralType.nan)
    }

    @inlinable
    public static var pi: Self {
        Self(_value: Swift.FloatLiteralType.pi)
    }

    @inlinable
    public static var radix: Int {
        Swift.FloatLiteralType.radix
    }

    @inlinable
    public static var signalingNaN: Self {
        Self(_value: Swift.FloatLiteralType.signalingNaN)
    }

    @inlinable
    public static var ulpOfOne: Self {
        Self(_value: Swift.FloatLiteralType.ulpOfOne)
    }

    public static func maximum(_ some: Self, _ other: Self) -> Self {
        Self(_value: Swift.FloatLiteralType.maximum(some._value, other._value))
    }

    public static func maximumMagnitude(_ some: Self, _ other: Self) -> Self {
        Self(_value: Swift.FloatLiteralType.maximumMagnitude(some._value, other._value))
    }

    public static func minimum(_ some: Self, _ other: Self) -> Self {
        Self(_value: Swift.FloatLiteralType.minimum(some._value, other._value))
    }

    public static func minimumMagnitude(_ some: Self, _ other: Self) -> Self {
        Self(_value: Swift.FloatLiteralType.minimumMagnitude(some._value, other._value))
    }

    @inlinable
    public init<Source>(_ source: Source)
        where Source: BinaryInteger {
            self.init(_value: Swift.FloatLiteralType(source))
    }

    @inlinable
    public init(sign: FloatingPointSign, exponent: Exponent, significand: Self) {
        let value = Swift.FloatLiteralType(sign: sign, exponent: exponent, significand: significand._value)
        self.init(_value: value)
    }

    @inlinable
    public init(signOf some: Self, magnitudeOf other: Self) {
        let value = Swift.FloatLiteralType(signOf: some._value, magnitudeOf: other._value)
        self.init(_value: value)
    }

    @inlinable
    public var exponent: Exponent {
        _value.exponent
    }

    @inlinable
    public var floatingPointClass: FloatingPointClassification {
        _value.floatingPointClass
    }

    @inlinable
    public var isCanonical: Bool {
        _value.isCanonical
    }

    @inlinable
    public var isFinite: Bool {
        _value.isFinite
    }

    @inlinable
    public var isInfinite: Bool {
        _value.isInfinite
    }

    @inlinable
    public var isNaN: Bool {
        _value.isNaN
    }

    @inlinable
    public var isNormal: Bool {
        _value.isNormal
    }

    @inlinable
    public var isSignalingNaN: Bool {
        _value.isSignalingNaN
    }

    @inlinable
    public var isSubnormal: Bool {
        _value.isSubnormal
    }

    @inlinable
    public var isZero: Bool {
        _value.isZero
    }

    @inlinable
    public var nextDown: Self {
        Self(_value: _value.nextDown)
    }

    @inlinable
    public var nextUp: Self {
        Self(_value: _value.nextUp)
    }

    @inlinable
    public var sign: FloatingPointSign {
        _value.sign
    }

    @inlinable
    public var significand: Self {
        Self(_value: _value.significand)
    }

    @inlinable
    public var ulp: Self {
        Self(_value: _value.ulp)
    }

    @inlinable
    public mutating func addProduct(_ some: Self, _ other: Self) {
        _value.addProduct(some._value, other._value)
    }

    @inlinable
    public func addingProduct(_ some: Self, _ other: Self) -> Self {
        let value = _value.addingProduct(some._value, other._value)
        return Self(_value: value)
    }

    @inlinable
    public mutating func formRemainder(dividingBy other: Self) {
        _value.formRemainder(dividingBy: other._value)
    }

    @inlinable
    public func remainder(dividingBy other: Self) -> Self {
        Self(_value: _value.remainder(dividingBy: other._value))
    }

    @inlinable
    public mutating func formTruncatingRemainder(dividingBy other: Self) {
        _value.formTruncatingRemainder(dividingBy: other._value)
    }

    @inlinable
    public func truncatingRemainder(dividingBy other: Self) -> Self {
        Self(_value: _value.truncatingRemainder(dividingBy: other._value))
    }

    @inlinable
    public mutating func formSquareRoot() {
        _value.formSquareRoot()
    }

    @inlinable
    public func squareRoot() -> Self {
        Self(_value: _value.squareRoot())
    }

    @inlinable
    public mutating func round() {
        _value.round()
    }

    @inlinable
    public mutating func round(_ rule: FloatingPointRoundingRule) {
        _value.round(rule)
    }

    @inlinable
    public func rounded() -> Self {
        Self(_value: _value.rounded())
    }

    @inlinable
    public func rounded(_ rule: FloatingPointRoundingRule) -> Self {
        Self(_value: _value.rounded(rule))
    }

    @inlinable
    public func isEqual(to other: Self) -> Bool {
        _value.isEqual(to: other._value)
    }

    @inlinable
    public func isLess(than other: Self) -> Bool {
        _value.isLess(than: other._value)
    }

    @inlinable
    public func isLessThanOrEqualTo(_ other: Self) -> Bool {
        _value.isLessThanOrEqualTo(other._value)
    }

    @inlinable
    public func isTotallyOrdered(belowOrEqualTo other: Self) -> Bool {
        _value.isTotallyOrdered(belowOrEqualTo: other._value)
    }

    @inlinable
    public static func /= (_ some: inout Self, _ other: Self) {
        some._value /= other._value
    }

    @inlinable
    public static func / (_ some: Self, _ other: Self) -> Self {
        .init(_value: some._value / other._value)
    }
}

extension FontSize: BinaryFloatingPoint {

    // Exposed

    // Protocol: BinaryFloatingPoint
    // Topic: Main

    public typealias RawExponent = Swift.FloatLiteralType.RawExponent

    public typealias RawSignificand = Swift.FloatLiteralType.RawSignificand

    @inlinable
    public static var exponentBitCount: Int {
        Swift.FloatLiteralType.exponentBitCount
    }

    @inlinable
    public static var significandBitCount: Int {
        Swift.FloatLiteralType.significandBitCount
    }

    @inlinable
    public static func random(in range: Range<Self>) -> Self {
        let range = Range(
            uncheckedBounds: (
                lower: range.lowerBound._value,
                upper: range.upperBound._value
            )
        )
        return Self(_value: Swift.FloatLiteralType.random(in: range))
    }

    @inlinable
    public static func random<Generator>(in range: Range<Self>, using generator: inout Generator) -> Self
        where Generator: RandomNumberGenerator {
            let range = Range(
                uncheckedBounds: (
                    lower: range.lowerBound._value,
                    upper: range.upperBound._value
                )
            )
            return Self(_value: Swift.FloatLiteralType.random(in: range, using: &generator))
    }

    @inlinable
    public static func random(in range: ClosedRange<Self>) -> Self {
        let range = ClosedRange(
            uncheckedBounds: (
                lower: range.lowerBound._value,
                upper: range.upperBound._value
            )
        )
        return Self(_value: Swift.FloatLiteralType.random(in: range))
    }

    @inlinable
    public static func random<Generator>(in range: ClosedRange<Self>, using generator: inout Generator) -> Self
        where Generator: RandomNumberGenerator {
            let range = ClosedRange(
                uncheckedBounds: (
                    lower: range.lowerBound._value,
                    upper: range.upperBound._value
                )
            )
            return Self(_value: Swift.FloatLiteralType.random(in: range, using: &generator))
    }

    @inlinable
    public init<Source>(_ source: Source)
        where Source: BinaryFloatingPoint {
            self.init(_value: Swift.FloatLiteralType(source))
    }

    @inlinable
    public init?<Source>(exactly source: Source)
        where Source: BinaryFloatingPoint {
            guard let value = Swift.FloatLiteralType(exactly: source) else {
                return nil
            }
            self.init(_value: value)
    }

    @inlinable
    public init(sign: FloatingPointSign, exponentBitPattern: RawExponent, significandBitPattern: RawSignificand) {
        let value = Swift.FloatLiteralType(
            sign: sign,
            exponentBitPattern: exponentBitPattern,
            significandBitPattern: significandBitPattern
        )
        self.init(_value: value)
    }

    @inlinable
    public var binade: Self {
        Self(_value: _value.binade)
    }

    @inlinable
    public var exponentBitPattern: RawExponent {
        _value.exponentBitPattern
    }

    @inlinable
    public var significandBitPattern: RawSignificand {
        _value.significandBitPattern
    }

    @inlinable
    public var significandWidth: Int {
        _value.significandWidth
    }
}

extension FontSize: Equatable {

    // Exposed

    // Protocol: Equatable
    // Topic: Main

    @inlinable
    public static func == (_ some: Self, _ other: Self) -> Bool {
        return some._value == other._value
    }
}

extension FontSize: Comparable {

    // Exposed

    // Protocol: Comparable
    // Topic: Main

    @inlinable
    public static func < (_ some: Self, _ other: Self) -> Bool {
        return some._value < other._value
    }
}

extension FontSize: Hashable {

    // Exposed

    // Protocol: Hashable
    // Topic: Main

    @inlinable
    public func hash(into hasher: inout Hasher) {
        hasher.combine(_value)
    }
}

extension FontSize: CustomStringConvertible {

    // Exposed

    // Protocol: CustomStringConvertible
    // Topic: Main

    @inlinable
    public var description: String {
        _value.description
    }
}

extension FontSize: LosslessStringConvertible {

    // Exposed

    // Protocol: LosslessStringConvertible
    // Topic: Main

    @inlinable
    public init?(_ description: String) {
        guard let value = Swift.FloatLiteralType(description) else {
            return nil
        }
        self.init(_value: value)
    }
}

extension FontSize: CustomDebugStringConvertible {

    // Exposed

    // Protocol: CustomDebugStringConvertible
    // Topic: Main

    @inlinable
    public var debugDescription: String {
        _value.debugDescription
    }
}

extension FontSize: Encodable {

    // Exposed

    // Protocol: Encodable
    // Topic: Main

    @inlinable
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(_value)
    }
}

extension FontSize: Decodable {

    // Exposed

    // Protocol: Decodable
    // Topic: Main

    @inlinable
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try container.decode(Swift.FloatLiteralType.self)
        self.init(_value: value)
    }
}

extension FontSize: ExpressibleByIntegerLiteral {

    // Exposed

    // Protocol: ExpressibleByIntegerLiteral
    // Topic: Main

    public typealias IntegerLiteralType = Swift.FloatLiteralType

    @inlinable
    public init(integerLiteral value: IntegerLiteralType) {
        self.init(_value: value)
    }
}

extension FontSize: ExpressibleByFloatLiteral {

    // Exposed

    // Protocol: ExpressibleByFloatLiteral
    // Topic: Main

    public typealias FloatLiteralType = Swift.FloatLiteralType

    @inlinable
    public init(floatLiteral value: FloatLiteralType) {
        self.init(_value: value)
    }
}

extension FontSize: CustomReflectable {

    // Exposed

    // Protocol: CustomReflectable
    // Topic: Main

    @inlinable
    public var customMirror: Mirror {
        .init(
            self,
            children: [:],
            displayStyle: .none,
            ancestorRepresentation: .suppressed
        )
    }
}

extension FontSize: TextOutputStreamable {

    // Exposed

    // Protocol: TextOutputStreamable
    // Topic: Main

    @inlinable
    public func write<Target>(to target: inout Target)
        where Target: TextOutputStream {
            _value.write(to: &target)
    }
}

extension FontSize: CustomLeafReflectable {

    // Exposed

    // Protocol: CustomLeafReflectable
    // Topic: Main
}

extension FontSize: CustomPlaygroundDisplayConvertible {

    // Exposed

    // Protocol: CustomPlaygroundDisplayConvertible
    // Topic: Main

    @inlinable
    public var playgroundDescription: Any {
        return _value
    }
}

extension FontSize: CVarArg {

    // Exposed

    // Protocol: CVarArg
    // Topic: Main

    @inlinable
    public var _cVarArgEncoding: [Int] {
        _value._cVarArgEncoding
    }
}

#if canImport(Foundation)
extension FontSize: _ObjectiveCBridgeable {

        // Concealed

        // Protocol: _ObjectiveCBridgeable
        // Topic: Main

        public typealias _ObjectiveCType = Foundation.NSNumber

        public static func _forceBridgeFromObjectiveC(_ source: _ObjectiveCType, result: inout Self?) {
            var _value: Swift.FloatLiteralType?
            defer {
                result = _value.map { Self(_value: $0) }
            }
            return Swift.FloatLiteralType._forceBridgeFromObjectiveC(source, result: &_value)
        }

        public static func _conditionallyBridgeFromObjectiveC(_ source: _ObjectiveCType, result: inout Self?) -> Bool {
            var _value: Swift.FloatLiteralType?
            defer {
                result = _value.map { Self(_value: $0) }
            }
            return Swift.FloatLiteralType._conditionallyBridgeFromObjectiveC(source, result: &_value)
        }

        public static func _unconditionallyBridgeFromObjectiveC(_ source: _ObjectiveCType?) -> Self {
            Self(_value: Swift.FloatLiteralType._unconditionallyBridgeFromObjectiveC(source))
        }

        public func _bridgeToObjectiveC() -> _ObjectiveCType {
            _value._bridgeToObjectiveC()
        }
    }
#endif
