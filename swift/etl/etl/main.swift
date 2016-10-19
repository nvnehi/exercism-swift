// imports
import Foundation

// types
struct ETL {
    // methods
    static func transform(_ oldScoringSystem: [Int: [String]]) -> [String: Int] {
        var transformed = [String: Int]()
        
        for (score, letters) in oldScoringSystem {
            for letter in letters {
                transformed[letter.lowercased()] = score
            }
        }
        
        return transformed
    }
}
