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

/*
    functional implementation
 */

//struct ETL {
//    // types
//    typealias LettersPerScore = [Int: [String]]
//    typealias ScoresPerLetter = [String: Int]
//
//    // methods
//    static func transform(_ oldScoringSystem: LettersPerScore) -> ScoresPerLetter {
//        var transformed = ScoresPerLetter()
//
//        oldScoringSystem.forEach {
//            key, values in
//            values.forEach {
//                value in
//                transformed[value.lowercased()] = key
//            }
//        }
//        
//        return transformed
//    }
//}
