import Foundation

struct Grains {
    enum GrainsError: Error {
        case inputTooLow(String)
        case inputTooHigh(String)
    }
    
    static var total: CUnsignedLongLong {
        let result = (1...64).map { $0 }.reduce(0, { return try! square($1) + $0 })
        
        return result
    }

    static func square(_ squares: Int) throws -> CUnsignedLongLong {
        guard squares > 0 && squares <= 64 else {
            let message = "Input[\(squares)] invalid. Input should be between 1 and 64 (inclusive)"

            if squares <= 0 { throw GrainsError.inputTooLow(message) }
            throw GrainsError.inputTooHigh(message)
        }

        return CUnsignedLongLong(pow(2.0, Double(squares - 1)))
//        return CUnsignedLongLong(1) << CUnsignedLongLong(squares - 1)
    }
}
