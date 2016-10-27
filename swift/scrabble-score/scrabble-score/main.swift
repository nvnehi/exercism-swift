import Foundation

struct Scrabble {
    private static let values = [
        "D": 2, "G": 2,
        "B": 3, "C": 3, "M": 3, "P": 3,
        "F": 4, "H": 4, "V": 4, "W": 4, "Y": 4,
        "K": 5,
        "J": 8, "X": 8,
        "Q": 10, "Z": 10,
    ]
    
    let score: Int
    
    init(_ word: String?) {
        score = Scrabble.score(word)
    }
    
    static func score(_ word: String?) -> Int {
        guard word != nil else { return 0 }
        
        let characters = word!
            .trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
            .uppercased()
            .characters
        
        return characters.reduce(0) {
            // every letter not represented in `values` equals 1
            return $0 + (Scrabble.values["\($1)"] ?? 1)
        }
    }
}
