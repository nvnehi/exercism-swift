// imports
import Foundation

// types
struct DNA {
    // properties
    let strand: String
    let symbols = "ACGT"
    
    // initialization
    init?(strand: String) {
        self.strand = strand

        // make sure every character is a symbol
        for ch in strand.characters {
            if !symbols.contains(ch.description) { return nil }
        }
    }
    
    // methods
    func count(_ symbol: Character) -> Int {
        return strand.characters.filter { $0 == symbol }.count
    }
    
    func counts() -> [String:Int] {
        var result: [String:Int] = [:]

        for symbol in symbols.characters {
            result[symbol.description] = count(symbol)
        }
        
        return result
    }
}
