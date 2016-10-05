// imports
import Foundation

// types
struct Nucleotide {
    // properties
    var complementOfDNA: String = ""
    
    // initializer
    init(_ complement: String) {
        complementOfDNA = transcribe(rna: complement)
    }
    
    // transcribes the entire string to DNA from RNA
    func transcribe(rna: String) -> String {
        // check for a first character and also that it can be transcribed to DNA from RNA
        if let firstCharacter = rna.characters.first {
            if var result: String = transcribeCharacter(String(firstCharacter)) {
                // if there are more characters then recursively call this method
                if rna.characters.count > 1 {
                    let rnaSubstring = rna.substring(from: rna.index(after: rna.startIndex))
                    result += transcribe(rna: rnaSubstring)
                }
                return result
            }
        }
        return ""
    }
    
    // transcribes a single character to DNA from RNA
    func transcribeCharacter(_ character: String) -> String? {
        let result: String?
        switch (character) {
            case "G": result = "C"
            case "C": result = "G"
            case "T": result = "A"
            case "A": result = "U"
            default: result = nil
        }
        return result
    }
}
