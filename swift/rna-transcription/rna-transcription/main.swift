// imports
import Foundation

// types
struct Nucleotide {
    // properties
    let rna: String
    let complements = [
        "G": "C",
        "C": "G",
        "T": "A",
        "A": "U"
    ]
    var complementOfDNA: String {
        return rna.characters.map { complements[ $0.description ]! }.joined()
    }
    
    // initializers
    init(_ rna: String) {
        self.rna = rna
    }
}
