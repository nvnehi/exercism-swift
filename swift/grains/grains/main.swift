import Foundation

struct Grains {
    enum GrainsError: Error {
        case inputTooLow(String)
        case inputTooHigh(String)
    }
    
    static let total: UInt64 = UInt64.max

    static func square(_ squares: Int) throws -> UInt64 {
        guard squares > 0 && squares <= 64 else {
            let message = "Input[\(squares)] invalid. Input should be between 1 and 64 (inclusive)"

            if squares <= 0 { throw GrainsError.inputTooLow(message) }
            else { throw GrainsError.inputTooHigh(message) }
        }

        return UInt64(1) << UInt64(squares - 1)
    }
}
