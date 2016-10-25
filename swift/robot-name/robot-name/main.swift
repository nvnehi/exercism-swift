import Foundation

struct Robot {
    var name = Robot.randName()
    private static var usedNames: [String] = []

    mutating func resetName() {
        if !(name.isEmpty) { Robot.usedNames.append(name) }

        repeat {
            name = Robot.randName()
        } while Robot.usedNames.contains(name)
    }

    private static func randName() -> String {
        return "\(randString(length: 2))\(randNumber(to: 1000, padding: 3))"
    }
    
    private static func randString(length: Int) -> String {
        return String((1...length).map { _ in Character(UnicodeScalar(65 + arc4random_uniform(26))!) })
    }
    
    private static func randNumber(to max: Int, padding: Int = 0) -> String {
        return String(format: "%.\(padding)d", arc4random_uniform(UInt32(max)))
    }
}
